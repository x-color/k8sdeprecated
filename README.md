# k8sdeprecated

This repository has [policy files](https://github.com/x-color/k8sdeprecated/tree/main/policy) of [Open Policy Agent](https://www.openpolicyagent.org/) for deprecated apis of kubernetes.
The policies detects manifests using deprecated apis.

They are updated automatically for a month.

## Policy

### For deprecated API

The policy returns **warn** if the api is deprecated in the version.

It outputs the following message if you use [policy/1_19.rego](https://github.com/x-color/k8sdeprecated/blob/main/policy/1_19.rego) and your manifest has `networking.k8s.io/v1beta1 Ingress` resource.

```
networking.k8s.io/v1beta1 Ingress is deprecated in 1.19+. use networking.k8s.io/v1 Ingress
```

### For removed API

The policy returns **error** if the api is removed in the version.

It outputs the following message if you use [policy/1_22.rego](https://github.com/x-color/k8sdeprecated/blob/main/policy/1_22.rego) and your manifest has `networking.k8s.io/v1beta1 Ingress` resource.

```
networking.k8s.io/v1beta1 Ingress is removed in 1.22+. use networking.k8s.io/v1 Ingress
```

## How to Use

If you use the policies with conftest

```shell
# Pull policies from the repository to detect deprecated apis in specific  k8s  version that you want to check.
# You should pull policies for versions under the k8s version.
# (e.g. You pull 1_2 ~ 1.22 if you want to check the apis for k8s 1.22)
$ conftest pull https://github.com/x-color/k8sdeprecated/blob/main/policy/1_2.rego
# :
$ conftest pull https://github.com/x-color/k8sdeprecated/blob/main/policy/1_22.rego

# Detect deprecated apis in manifest files.
$ conftest test <manifest file>
```

Example

```console
$ cat networking_v1beta_ingress.yaml
apiVersion: networking.k8s.io/v1beta1
kind: Ingress

$ conftest test networking_v1beta_ingress.yaml
WARN - networking_v1beta_ingress.yaml - main - networking.k8s.io/v1beta1 Ingress is deprecated in 1.19+. use networking.k8s.io/v1 Ingress
FAIL - networking_v1beta_ingress.yaml - main - networking.k8s.io/v1beta1 Ingress is removed in 1.22+. use networking.k8s.io/v1 Ingress

196 tests, 194 passed, 1 warning, 1 failure, 0 exceptions
```

## LICENSE

MIT
