package k8sdeprecated

warn[msg] {
	input.apiVersion == "policy/v1beta1"
	input.kind == "PodDisruptionBudget"
	msg := "policy/v1beta1 PodDisruptionBudget is deprecated in 1.21+. use policy/v1 PodDisruptionBudget"
}

deny[msg] {
	input.apiVersion == "flowcontrol.apiserver.k8s.io/v1alpha1"
	input.kind == "FlowSchemaList"
	msg := "flowcontrol.apiserver.k8s.io/v1alpha1 FlowSchemaList is removed in 1.21+. use flowcontrol.apiserver.k8s.io/v1beta2 FlowSchemaList"
}

warn[msg] {
	input.apiVersion == "storage.k8s.io/v1alpha1"
	input.kind == "CSIStorageCapacityList"
	msg := "storage.k8s.io/v1alpha1 CSIStorageCapacityList is deprecated in 1.21+. use storage.k8s.io/v1beta1 CSIStorageCapacityList"
}

deny[msg] {
	input.apiVersion == "flowcontrol.apiserver.k8s.io/v1alpha1"
	input.kind == "PriorityLevelConfigurationList"
	msg := "flowcontrol.apiserver.k8s.io/v1alpha1 PriorityLevelConfigurationList is removed in 1.21+. use flowcontrol.apiserver.k8s.io/v1beta2 PriorityLevelConfigurationList"
}

warn[msg] {
	input.apiVersion == "discovery.k8s.io/v1beta1"
	input.kind == "EndpointSliceList"
	msg := "discovery.k8s.io/v1beta1 EndpointSliceList is deprecated in 1.21+. use discovery.k8s.io/v1 EndpointSlice"
}

deny[msg] {
	input.apiVersion == "flowcontrol.apiserver.k8s.io/v1alpha1"
	input.kind == "PriorityLevelConfiguration"
	msg := "flowcontrol.apiserver.k8s.io/v1alpha1 PriorityLevelConfiguration is removed in 1.21+. use flowcontrol.apiserver.k8s.io/v1beta2 PriorityLevelConfiguration"
}

warn[msg] {
	input.apiVersion == "discovery.k8s.io/v1beta1"
	input.kind == "EndpointSlice"
	msg := "discovery.k8s.io/v1beta1 EndpointSlice is deprecated in 1.21+. use discovery.k8s.io/v1 EndpointSlice"
}

warn[msg] {
	input.apiVersion == "policy/v1beta1"
	input.kind == "PodDisruptionBudgetList"
	msg := "policy/v1beta1 PodDisruptionBudgetList is deprecated in 1.21+. use policy/v1 PodDisruptionBudgetList"
}

warn[msg] {
	input.apiVersion == "storage.k8s.io/v1alpha1"
	input.kind == "VolumeAttachmentList"
	msg := "storage.k8s.io/v1alpha1 VolumeAttachmentList is deprecated in 1.21+. use storage.k8s.io/v1 VolumeAttachmentList"
}

warn[msg] {
	input.apiVersion == "policy/v1beta1"
	input.kind == "PodSecurityPolicyList"
	msg := "policy/v1beta1 PodSecurityPolicyList is deprecated in 1.21+"
}

warn[msg] {
	input.apiVersion == "storage.k8s.io/v1alpha1"
	input.kind == "VolumeAttachment"
	msg := "storage.k8s.io/v1alpha1 VolumeAttachment is deprecated in 1.21+. use storage.k8s.io/v1 VolumeAttachment"
}

deny[msg] {
	input.apiVersion == "flowcontrol.apiserver.k8s.io/v1alpha1"
	input.kind == "FlowSchema"
	msg := "flowcontrol.apiserver.k8s.io/v1alpha1 FlowSchema is removed in 1.21+. use flowcontrol.apiserver.k8s.io/v1beta2 FlowSchema"
}

warn[msg] {
	input.apiVersion == "policy/v1beta1"
	input.kind == "PodSecurityPolicy"
	msg := "policy/v1beta1 PodSecurityPolicy is deprecated in 1.21+"
}

warn[msg] {
	input.apiVersion == "storage.k8s.io/v1alpha1"
	input.kind == "CSIStorageCapacity"
	msg := "storage.k8s.io/v1alpha1 CSIStorageCapacity is deprecated in 1.21+. use storage.k8s.io/v1beta1 CSIStorageCapacity"
}

warn[msg] {
	input.apiVersion == "batch/v1beta1"
	input.kind == "CronJobList"
	msg := "batch/v1beta1 CronJobList is deprecated in 1.21+. use batch/v1 CronJobList"
}

warn[msg] {
	input.apiVersion == "batch/v1beta1"
	input.kind == "CronJob"
	msg := "batch/v1beta1 CronJob is deprecated in 1.21+. use batch/v1 CronJob"
}
