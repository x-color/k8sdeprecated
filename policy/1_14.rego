package main

warn[msg] {
	input.apiVersion == "scheduling.k8s.io/v1beta1"
	input.kind == "PriorityClassList"
	msg := "scheduling.k8s.io/v1beta1 PriorityClassList is deprecated in 1.14+. use scheduling.k8s.io/v1 PriorityClassList"
}

warn[msg] {
	input.apiVersion == "extensions/v1beta1"
	input.kind == "Ingress"
	msg := "extensions/v1beta1 Ingress is deprecated in 1.14+. use networking.k8s.io/v1 Ingress"
}

warn[msg] {
	input.apiVersion == "extensions/v1beta1"
	input.kind == "IngressList"
	msg := "extensions/v1beta1 IngressList is deprecated in 1.14+. use networking.k8s.io/v1 IngressList"
}

warn[msg] {
	input.apiVersion == "scheduling.k8s.io/v1beta1"
	input.kind == "PriorityClass"
	msg := "scheduling.k8s.io/v1beta1 PriorityClass is deprecated in 1.14+. use scheduling.k8s.io/v1 PriorityClass"
}