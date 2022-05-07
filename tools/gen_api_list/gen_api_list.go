package main

import (
	"context"
	_ "embed"
	"errors"
	"fmt"
	"os"
	"strings"
	"text/template"

	"github.com/google/go-github/v44/github"
)

//go:embed k8sapi.go.tmpl
var tmpl string

func main() {
	if err := run(); err != nil {
		fmt.Fprintln(os.Stderr, err)
		os.Exit(1)
	}
}

func run() error {
	paths, err := getAPIsPath()
	if err != nil {
		return err
	}
	return genFile(toAPISet(paths))
}

func genFile(apis map[string]string) error {
	tpl, err := template.New("").Parse(tmpl)
	if err != nil {
		return err
	}

	f, err := os.OpenFile("k8sapi/k8sapi.go", os.O_CREATE|os.O_RDWR, 0644)
	if err != nil {
		return nil
	}
	return tpl.Execute(f, apis)
}

func getAPIsPath() ([]string, error) {
	client := github.NewClient(nil)
	_, contents, _, err := client.Repositories.GetContents(context.Background(), "kubernetes", "kubernetes", "staging/src/k8s.io", nil)
	if err != nil {
		return nil, err
	}

	var sha string
	for _, content := range contents {
		if content.GetName() == "api" {
			sha = content.GetSHA()
		}
	}
	if sha == "" {
		return nil, errors.New("kubernetes/taging/src/k8s.io/api is not found")
	}

	tree, _, err := client.Git.GetTree(context.Background(), "kubernetes", "kubernetes", sha, true)
	if err != nil {
		return nil, err
	}
	apis := make([]string, 0)
	for _, e := range tree.Entries {
		path := e.GetPath()
		if strings.HasSuffix(path, "register.go") {
			apis = append(apis, strings.TrimSuffix(path, "/register.go"))
		}
	}
	return apis, nil
}

func toAPISet(paths []string) map[string]string {
	apis := make(map[string]string)
	for _, path := range paths {
		s := strings.Split(path, "/")
		group := s[0]
		version := s[1]
		apis[group+version] = "k8s.io/api/" + path
	}
	return apis
}
