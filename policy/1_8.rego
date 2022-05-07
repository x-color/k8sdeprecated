package main

warn[msg] {
	input.apiVersion == "apps/v1beta1"
	input.kind == "Scale"
	msg := "apps/v1beta1 Scale is deprecated in 1.8+. use autoscaling/v1 Scale"
}

warn[msg] {
	input.apiVersion == "apps/v1beta1"
	input.kind == "DeploymentList"
	msg := "apps/v1beta1 DeploymentList is deprecated in 1.8+. use apps/v1 DeploymentList"
}

warn[msg] {
	input.apiVersion == "extensions/v1beta1"
	input.kind == "Deployment"
	msg := "extensions/v1beta1 Deployment is deprecated in 1.8+. use apps/v1 Deployment"
}

warn[msg] {
	input.apiVersion == "extensions/v1beta1"
	input.kind == "DaemonSetList"
	msg := "extensions/v1beta1 DaemonSetList is deprecated in 1.8+. use apps/v1 DaemonSetList"
}

warn[msg] {
	input.apiVersion == "extensions/v1beta1"
	input.kind == "ReplicaSet"
	msg := "extensions/v1beta1 ReplicaSet is deprecated in 1.8+. use apps/v1 ReplicaSet"
}

warn[msg] {
	input.apiVersion == "extensions/v1beta1"
	input.kind == "ReplicaSetList"
	msg := "extensions/v1beta1 ReplicaSetList is deprecated in 1.8+. use apps/v1 ReplicaSetList"
}

warn[msg] {
	input.apiVersion == "apps/v1beta1"
	input.kind == "StatefulSetList"
	msg := "apps/v1beta1 StatefulSetList is deprecated in 1.8+. use apps/v1 StatefulSetList"
}

warn[msg] {
	input.apiVersion == "extensions/v1beta1"
	input.kind == "DaemonSet"
	msg := "extensions/v1beta1 DaemonSet is deprecated in 1.8+. use apps/v1 DaemonSet"
}

warn[msg] {
	input.apiVersion == "apps/v1beta1"
	input.kind == "StatefulSet"
	msg := "apps/v1beta1 StatefulSet is deprecated in 1.8+. use apps/v1 StatefulSet"
}

warn[msg] {
	input.apiVersion == "apps/v1beta1"
	input.kind == "Deployment"
	msg := "apps/v1beta1 Deployment is deprecated in 1.8+. use apps/v1 Deployment"
}

warn[msg] {
	input.apiVersion == "extensions/v1beta1"
	input.kind == "DeploymentList"
	msg := "extensions/v1beta1 DeploymentList is deprecated in 1.8+. use apps/v1 DeploymentList"
}

warn[msg] {
	input.apiVersion == "apps/v1beta1"
	input.kind == "ControllerRevision"
	msg := "apps/v1beta1 ControllerRevision is deprecated in 1.8+. use apps/v1 ControllerRevision"
}

warn[msg] {
	input.apiVersion == "apps/v1beta1"
	input.kind == "DeploymentRollback"
	msg := "apps/v1beta1 DeploymentRollback is deprecated in 1.8+. use apps/v1 DeploymentRollback"
}

warn[msg] {
	input.apiVersion == "extensions/v1beta1"
	input.kind == "DeploymentRollback"
	msg := "extensions/v1beta1 DeploymentRollback is deprecated in 1.8+"
}

warn[msg] {
	input.apiVersion == "apps/v1beta1"
	input.kind == "ControllerRevisionList"
	msg := "apps/v1beta1 ControllerRevisionList is deprecated in 1.8+. use apps/v1 ControllerRevisionList"
}