package main

warn[msg] {
	input.apiVersion == "autoscaling/v2beta2"
	input.kind == "HorizontalPodAutoscaler"
	msg := "autoscaling/v2beta2 HorizontalPodAutoscaler is deprecated in 1.23+. use autoscaling/v2 HorizontalPodAutoscaler"
}

warn[msg] {
	input.apiVersion == "flowcontrol.apiserver.k8s.io/v1beta1"
	input.kind == "FlowSchema"
	msg := "flowcontrol.apiserver.k8s.io/v1beta1 FlowSchema is deprecated in 1.23+. use flowcontrol.apiserver.k8s.io/v1beta2 FlowSchema"
}

warn[msg] {
	input.apiVersion == "flowcontrol.apiserver.k8s.io/v1beta1"
	input.kind == "FlowSchemaList"
	msg := "flowcontrol.apiserver.k8s.io/v1beta1 FlowSchemaList is deprecated in 1.23+. use flowcontrol.apiserver.k8s.io/v1beta2 FlowSchemaList"
}

warn[msg] {
	input.apiVersion == "flowcontrol.apiserver.k8s.io/v1beta1"
	input.kind == "PriorityLevelConfiguration"
	msg := "flowcontrol.apiserver.k8s.io/v1beta1 PriorityLevelConfiguration is deprecated in 1.23+. use flowcontrol.apiserver.k8s.io/v1beta2 PriorityLevelConfiguration"
}

warn[msg] {
	input.apiVersion == "flowcontrol.apiserver.k8s.io/v1beta1"
	input.kind == "PriorityLevelConfigurationList"
	msg := "flowcontrol.apiserver.k8s.io/v1beta1 PriorityLevelConfigurationList is deprecated in 1.23+. use flowcontrol.apiserver.k8s.io/v1beta2 PriorityLevelConfigurationList"
}
