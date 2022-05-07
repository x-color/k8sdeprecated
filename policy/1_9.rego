package main

warn[msg] {
	input.apiVersion == "apps/v1beta2"
	input.kind == "StatefulSetList"
	msg := "apps/v1beta2 StatefulSetList is deprecated in 1.9+. use apps/v1 StatefulSetList"
}

warn[msg] {
	input.apiVersion == "extensions/v1beta1"
	input.kind == "NetworkPolicy"
	msg := "extensions/v1beta1 NetworkPolicy is deprecated in 1.9+. use networking.k8s.io/v1 NetworkPolicy"
}

warn[msg] {
	input.apiVersion == "extensions/v1beta1"
	input.kind == "NetworkPolicyList"
	msg := "extensions/v1beta1 NetworkPolicyList is deprecated in 1.9+. use networking.k8s.io/v1 NetworkPolicyList"
}

warn[msg] {
	input.apiVersion == "apps/v1beta2"
	input.kind == "ReplicaSetList"
	msg := "apps/v1beta2 ReplicaSetList is deprecated in 1.9+. use apps/v1 ReplicaSetList"
}

warn[msg] {
	input.apiVersion == "apps/v1beta2"
	input.kind == "Deployment"
	msg := "apps/v1beta2 Deployment is deprecated in 1.9+. use apps/v1 Deployment"
}

warn[msg] {
	input.apiVersion == "apps/v1beta2"
	input.kind == "Scale"
	msg := "apps/v1beta2 Scale is deprecated in 1.9+. use autoscaling/v1 Scale"
}

warn[msg] {
	input.apiVersion == "apps/v1beta2"
	input.kind == "ReplicaSet"
	msg := "apps/v1beta2 ReplicaSet is deprecated in 1.9+. use apps/v1 ReplicaSet"
}

warn[msg] {
	input.apiVersion == "apps/v1beta2"
	input.kind == "StatefulSet"
	msg := "apps/v1beta2 StatefulSet is deprecated in 1.9+. use apps/v1 StatefulSet"
}

warn[msg] {
	input.apiVersion == "apps/v1beta2"
	input.kind == "ControllerRevision"
	msg := "apps/v1beta2 ControllerRevision is deprecated in 1.9+. use apps/v1 ControllerRevision"
}

warn[msg] {
	input.apiVersion == "apps/v1beta2"
	input.kind == "ControllerRevisionList"
	msg := "apps/v1beta2 ControllerRevisionList is deprecated in 1.9+. use apps/v1 ControllerRevisionList"
}

warn[msg] {
	input.apiVersion == "apps/v1beta2"
	input.kind == "DaemonSetList"
	msg := "apps/v1beta2 DaemonSetList is deprecated in 1.9+. use apps/v1 DaemonSetList"
}

warn[msg] {
	input.apiVersion == "apps/v1beta2"
	input.kind == "DeploymentList"
	msg := "apps/v1beta2 DeploymentList is deprecated in 1.9+. use apps/v1 DeploymentList"
}

warn[msg] {
	input.apiVersion == "apps/v1beta2"
	input.kind == "DaemonSet"
	msg := "apps/v1beta2 DaemonSet is deprecated in 1.9+. use apps/v1 DaemonSet"
}