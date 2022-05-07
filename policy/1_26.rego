package main

deny[msg] {
	input.apiVersion == "flowcontrol.apiserver.k8s.io/v1beta1"
	input.kind == "FlowSchemaList"
	msg := "flowcontrol.apiserver.k8s.io/v1beta1 FlowSchemaList is removed in 1.26+. use flowcontrol.apiserver.k8s.io/v1beta2 FlowSchemaList"
}

deny[msg] {
	input.apiVersion == "flowcontrol.apiserver.k8s.io/v1beta1"
	input.kind == "PriorityLevelConfiguration"
	msg := "flowcontrol.apiserver.k8s.io/v1beta1 PriorityLevelConfiguration is removed in 1.26+. use flowcontrol.apiserver.k8s.io/v1beta2 PriorityLevelConfiguration"
}

warn[msg] {
	input.apiVersion == "flowcontrol.apiserver.k8s.io/v1beta2"
	input.kind == "FlowSchema"
	msg := "flowcontrol.apiserver.k8s.io/v1beta2 FlowSchema is deprecated in 1.26+"
}

warn[msg] {
	input.apiVersion == "flowcontrol.apiserver.k8s.io/v1beta2"
	input.kind == "FlowSchemaList"
	msg := "flowcontrol.apiserver.k8s.io/v1beta2 FlowSchemaList is deprecated in 1.26+"
}

deny[msg] {
	input.apiVersion == "flowcontrol.apiserver.k8s.io/v1beta1"
	input.kind == "PriorityLevelConfigurationList"
	msg := "flowcontrol.apiserver.k8s.io/v1beta1 PriorityLevelConfigurationList is removed in 1.26+. use flowcontrol.apiserver.k8s.io/v1beta2 PriorityLevelConfigurationList"
}

deny[msg] {
	input.apiVersion == "flowcontrol.apiserver.k8s.io/v1beta1"
	input.kind == "FlowSchema"
	msg := "flowcontrol.apiserver.k8s.io/v1beta1 FlowSchema is removed in 1.26+. use flowcontrol.apiserver.k8s.io/v1beta2 FlowSchema"
}

warn[msg] {
	input.apiVersion == "flowcontrol.apiserver.k8s.io/v1beta2"
	input.kind == "PriorityLevelConfiguration"
	msg := "flowcontrol.apiserver.k8s.io/v1beta2 PriorityLevelConfiguration is deprecated in 1.26+"
}

warn[msg] {
	input.apiVersion == "flowcontrol.apiserver.k8s.io/v1beta2"
	input.kind == "PriorityLevelConfigurationList"
	msg := "flowcontrol.apiserver.k8s.io/v1beta2 PriorityLevelConfigurationList is deprecated in 1.26+"
}

deny[msg] {
	input.apiVersion == "autoscaling/v2beta2"
	input.kind == "HorizontalPodAutoscaler"
	msg := "autoscaling/v2beta2 HorizontalPodAutoscaler is removed in 1.26+. use autoscaling/v2 HorizontalPodAutoscaler"
}