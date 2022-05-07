package main

warn[msg] {
	input.apiVersion == "extensions/v1beta1"
	input.kind == "PodSecurityPolicyList"
	msg := "extensions/v1beta1 PodSecurityPolicyList is deprecated in 1.11+. use policy/v1beta1 PodSecurityPolicyList"
}

warn[msg] {
	input.apiVersion == "extensions/v1beta1"
	input.kind == "PodSecurityPolicy"
	msg := "extensions/v1beta1 PodSecurityPolicy is deprecated in 1.11+. use policy/v1beta1 PodSecurityPolicy"
}