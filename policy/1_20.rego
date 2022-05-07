package main

warn[msg] {
	input.apiVersion == "flowcontrol.apiserver.k8s.io/v1alpha1"
	input.kind == "FlowSchemaList"
	msg := "flowcontrol.apiserver.k8s.io/v1alpha1 FlowSchemaList is deprecated in 1.20+. use flowcontrol.apiserver.k8s.io/v1beta2 FlowSchemaList"
}

warn[msg] {
	input.apiVersion == "flowcontrol.apiserver.k8s.io/v1alpha1"
	input.kind == "PriorityLevelConfigurationList"
	msg := "flowcontrol.apiserver.k8s.io/v1alpha1 PriorityLevelConfigurationList is deprecated in 1.20+. use flowcontrol.apiserver.k8s.io/v1beta2 PriorityLevelConfigurationList"
}

warn[msg] {
	input.apiVersion == "flowcontrol.apiserver.k8s.io/v1alpha1"
	input.kind == "PriorityLevelConfiguration"
	msg := "flowcontrol.apiserver.k8s.io/v1alpha1 PriorityLevelConfiguration is deprecated in 1.20+. use flowcontrol.apiserver.k8s.io/v1beta2 PriorityLevelConfiguration"
}

warn[msg] {
	input.apiVersion == "flowcontrol.apiserver.k8s.io/v1alpha1"
	input.kind == "FlowSchema"
	msg := "flowcontrol.apiserver.k8s.io/v1alpha1 FlowSchema is deprecated in 1.20+. use flowcontrol.apiserver.k8s.io/v1beta2 FlowSchema"
}