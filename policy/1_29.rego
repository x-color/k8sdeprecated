package main

deny[msg] {
	input.apiVersion == "flowcontrol.apiserver.k8s.io/v1beta2"
	input.kind == "FlowSchema"
	msg := "flowcontrol.apiserver.k8s.io/v1beta2 FlowSchema is removed in 1.29+"
}

deny[msg] {
	input.apiVersion == "flowcontrol.apiserver.k8s.io/v1beta2"
	input.kind == "FlowSchemaList"
	msg := "flowcontrol.apiserver.k8s.io/v1beta2 FlowSchemaList is removed in 1.29+"
}

deny[msg] {
	input.apiVersion == "flowcontrol.apiserver.k8s.io/v1beta2"
	input.kind == "PriorityLevelConfiguration"
	msg := "flowcontrol.apiserver.k8s.io/v1beta2 PriorityLevelConfiguration is removed in 1.29+"
}

deny[msg] {
	input.apiVersion == "flowcontrol.apiserver.k8s.io/v1beta2"
	input.kind == "PriorityLevelConfigurationList"
	msg := "flowcontrol.apiserver.k8s.io/v1beta2 PriorityLevelConfigurationList is removed in 1.29+"
}
