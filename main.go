package main

import (
	"fmt"
	"os"
	"strings"

	"github.com/x-color/k8guard/k8sapi"
	"k8s.io/apimachinery/pkg/runtime/schema"
)

type apiLifecycleDeprecated interface {
	APILifecycleDeprecated() (major, minor int)
}

type apiLifecycleRemoved interface {
	APILifecycleRemoved() (major, minor int)
}

type apiLifecycleReplacement interface {
	APILifecycleReplacement() schema.GroupVersionKind
}

func main() {
	if err := run(); err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}

type level string

const (
	warn level = "warn"
	deny level = "deny"
)

type policy struct {
	level        level
	kind         string
	groupVersion string
	k8sVersion   string
	msg          string
}

func (p policy) String() string {
	s := `%s[msg] {
	input.apiVersion == "%s"
	input.kind == "%s"
	msg := "%s"
}`
	return fmt.Sprintf(s, p.level, p.groupVersion, p.kind, p.msg)
}

type policies []policy

func (p policies) Strings() []string {
	l := make([]string, len(p))
	for i, policy := range p {
		l[i] = policy.String()
	}
	return l
}

func run() error {
	ps, err := generatePolicies()
	if err != nil {
		return err
	}
	for version, policies := range ps {
		filename := fmt.Sprintf("policy/%s.rego", strings.ReplaceAll(version, ".", "_"))
		content := strings.Join(policies.Strings(), "\n\n")
		if err := generatePolicyFile(filename, content); err != nil {
			return err
		}
	}
	return nil
}

func generatePolicies() (map[string]policies, error) {
	apis, err := k8sapi.List()
	if err != nil {
		return nil, err
	}
	ps := make(map[string]policies)
	for _, api := range apis {
		deprecatedPolicy := generateDeprecatedPolicy(api)
		if deprecatedPolicy != nil {
			ps[deprecatedPolicy.k8sVersion] = append(ps[deprecatedPolicy.k8sVersion], *deprecatedPolicy)
		}
		removedPolicy := generateRemovedPolicy(api)
		if removedPolicy != nil {
			ps[removedPolicy.k8sVersion] = append(ps[removedPolicy.k8sVersion], *removedPolicy)
		}
	}
	return ps, nil
}

func generateDeprecatedPolicy(api k8sapi.API) *policy {
	deprecated, isDeprecated := api.Obj.(apiLifecycleDeprecated)
	if !isDeprecated {
		return nil
	}
	p := &policy{
		level:        warn,
		kind:         api.Kind,
		groupVersion: api.GroupVersion.String(),
		k8sVersion:   k8sVersion(deprecated.APILifecycleDeprecated()),
		msg: fmt.Sprintf("%s %s is deprecated in %s+",
			api.GroupVersion,
			api.Kind,
			k8sVersion(deprecated.APILifecycleDeprecated()),
		),
	}
	p.msg += replacementInfo(api)
	return p
}

func generateRemovedPolicy(api k8sapi.API) *policy {
	removed, hasRemovalInfo := api.Obj.(apiLifecycleRemoved)
	if !hasRemovalInfo {
		return nil
	}
	p := &policy{
		level:        deny,
		kind:         api.Kind,
		groupVersion: api.GroupVersion.String(),
		k8sVersion:   k8sVersion(removed.APILifecycleRemoved()),
		msg: fmt.Sprintf("%s %s is removed in %s+",
			api.GroupVersion,
			api.Kind,
			k8sVersion(removed.APILifecycleRemoved()),
		),
	}
	p.msg += replacementInfo(api)
	return p
}

func replacementInfo(api k8sapi.API) string {
	if replaced, hasReplacement := api.Obj.(apiLifecycleReplacement); hasReplacement {
		gvk := replaced.APILifecycleReplacement()
		return fmt.Sprintf(". use %s %s", gvk.GroupVersion().String(), gvk.Kind)
	}
	return ""
}

func k8sVersion(major, minor int) string {
	return fmt.Sprintf("%d.%d", major, minor)
}

func generatePolicyFile(filename, content string) error {
	head := "package main"
	body := fmt.Sprintf("%s\n\n%s", head, content)
	return os.WriteFile(filename, []byte(body), 0644)
}
