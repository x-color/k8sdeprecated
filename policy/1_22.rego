package main

deny[msg] {
	input.apiVersion == "admission.k8s.io/v1beta1"
	input.kind == "AdmissionReview"
	msg := "admission.k8s.io/v1beta1 AdmissionReview is removed in 1.22+. use admission.k8s.io/v1 AdmissionReview"
}

deny[msg] {
	input.apiVersion == "admissionregistration.k8s.io/v1beta1"
	input.kind == "MutatingWebhookConfiguration"
	msg := "admissionregistration.k8s.io/v1beta1 MutatingWebhookConfiguration is removed in 1.22+. use admissionregistration.k8s.io/v1 MutatingWebhookConfiguration"
}

deny[msg] {
	input.apiVersion == "admissionregistration.k8s.io/v1beta1"
	input.kind == "MutatingWebhookConfigurationList"
	msg := "admissionregistration.k8s.io/v1beta1 MutatingWebhookConfigurationList is removed in 1.22+. use admissionregistration.k8s.io/v1 MutatingWebhookConfigurationList"
}

deny[msg] {
	input.apiVersion == "admissionregistration.k8s.io/v1beta1"
	input.kind == "ValidatingWebhookConfiguration"
	msg := "admissionregistration.k8s.io/v1beta1 ValidatingWebhookConfiguration is removed in 1.22+. use admissionregistration.k8s.io/v1 ValidatingWebhookConfiguration"
}

deny[msg] {
	input.apiVersion == "admissionregistration.k8s.io/v1beta1"
	input.kind == "ValidatingWebhookConfigurationList"
	msg := "admissionregistration.k8s.io/v1beta1 ValidatingWebhookConfigurationList is removed in 1.22+. use admissionregistration.k8s.io/v1 ValidatingWebhookConfigurationList"
}

deny[msg] {
	input.apiVersion == "authentication.k8s.io/v1beta1"
	input.kind == "TokenReview"
	msg := "authentication.k8s.io/v1beta1 TokenReview is removed in 1.22+. use authentication.k8s.io/v1 TokenReview"
}

deny[msg] {
	input.apiVersion == "authorization.k8s.io/v1beta1"
	input.kind == "LocalSubjectAccessReview"
	msg := "authorization.k8s.io/v1beta1 LocalSubjectAccessReview is removed in 1.22+. use authorization.k8s.io/v1 LocalSubjectAccessReview"
}

deny[msg] {
	input.apiVersion == "authorization.k8s.io/v1beta1"
	input.kind == "SelfSubjectAccessReview"
	msg := "authorization.k8s.io/v1beta1 SelfSubjectAccessReview is removed in 1.22+. use authorization.k8s.io/v1 SelfSubjectAccessReview"
}

deny[msg] {
	input.apiVersion == "authorization.k8s.io/v1beta1"
	input.kind == "SelfSubjectRulesReview"
	msg := "authorization.k8s.io/v1beta1 SelfSubjectRulesReview is removed in 1.22+. use authorization.k8s.io/v1 SelfSubjectRulesReview"
}

deny[msg] {
	input.apiVersion == "authorization.k8s.io/v1beta1"
	input.kind == "SubjectAccessReview"
	msg := "authorization.k8s.io/v1beta1 SubjectAccessReview is removed in 1.22+. use authorization.k8s.io/v1 SubjectAccessReview"
}

deny[msg] {
	input.apiVersion == "certificates.k8s.io/v1beta1"
	input.kind == "CertificateSigningRequest"
	msg := "certificates.k8s.io/v1beta1 CertificateSigningRequest is removed in 1.22+. use certificates.k8s.io/v1 CertificateSigningRequest"
}

deny[msg] {
	input.apiVersion == "certificates.k8s.io/v1beta1"
	input.kind == "CertificateSigningRequestList"
	msg := "certificates.k8s.io/v1beta1 CertificateSigningRequestList is removed in 1.22+. use certificates.k8s.io/v1 CertificateSigningRequestList"
}

deny[msg] {
	input.apiVersion == "coordination.k8s.io/v1beta1"
	input.kind == "Lease"
	msg := "coordination.k8s.io/v1beta1 Lease is removed in 1.22+. use coordination.k8s.io/v1 Lease"
}

deny[msg] {
	input.apiVersion == "coordination.k8s.io/v1beta1"
	input.kind == "LeaseList"
	msg := "coordination.k8s.io/v1beta1 LeaseList is removed in 1.22+. use coordination.k8s.io/v1 LeaseList"
}

deny[msg] {
	input.apiVersion == "extensions/v1beta1"
	input.kind == "Ingress"
	msg := "extensions/v1beta1 Ingress is removed in 1.22+. use networking.k8s.io/v1 Ingress"
}

deny[msg] {
	input.apiVersion == "extensions/v1beta1"
	input.kind == "IngressList"
	msg := "extensions/v1beta1 IngressList is removed in 1.22+. use networking.k8s.io/v1 IngressList"
}

deny[msg] {
	input.apiVersion == "networking.k8s.io/v1beta1"
	input.kind == "Ingress"
	msg := "networking.k8s.io/v1beta1 Ingress is removed in 1.22+. use networking.k8s.io/v1 Ingress"
}

deny[msg] {
	input.apiVersion == "networking.k8s.io/v1beta1"
	input.kind == "IngressClass"
	msg := "networking.k8s.io/v1beta1 IngressClass is removed in 1.22+. use networking.k8s.io/v1 IngressClassList"
}

deny[msg] {
	input.apiVersion == "networking.k8s.io/v1beta1"
	input.kind == "IngressClassList"
	msg := "networking.k8s.io/v1beta1 IngressClassList is removed in 1.22+. use networking.k8s.io/v1 IngressClassList"
}

deny[msg] {
	input.apiVersion == "networking.k8s.io/v1beta1"
	input.kind == "IngressList"
	msg := "networking.k8s.io/v1beta1 IngressList is removed in 1.22+. use networking.k8s.io/v1 IngressList"
}

deny[msg] {
	input.apiVersion == "rbac.authorization.k8s.io/v1beta1"
	input.kind == "ClusterRole"
	msg := "rbac.authorization.k8s.io/v1beta1 ClusterRole is removed in 1.22+. use rbac.authorization.k8s.io/v1 ClusterRole"
}

deny[msg] {
	input.apiVersion == "rbac.authorization.k8s.io/v1beta1"
	input.kind == "ClusterRoleBinding"
	msg := "rbac.authorization.k8s.io/v1beta1 ClusterRoleBinding is removed in 1.22+. use rbac.authorization.k8s.io/v1 ClusterRoleBinding"
}

deny[msg] {
	input.apiVersion == "rbac.authorization.k8s.io/v1beta1"
	input.kind == "ClusterRoleBindingList"
	msg := "rbac.authorization.k8s.io/v1beta1 ClusterRoleBindingList is removed in 1.22+. use rbac.authorization.k8s.io/v1 ClusterRoleBindingList"
}

deny[msg] {
	input.apiVersion == "rbac.authorization.k8s.io/v1beta1"
	input.kind == "ClusterRoleList"
	msg := "rbac.authorization.k8s.io/v1beta1 ClusterRoleList is removed in 1.22+. use rbac.authorization.k8s.io/v1 ClusterRoleList"
}

deny[msg] {
	input.apiVersion == "rbac.authorization.k8s.io/v1beta1"
	input.kind == "Role"
	msg := "rbac.authorization.k8s.io/v1beta1 Role is removed in 1.22+. use rbac.authorization.k8s.io/v1 Role"
}

deny[msg] {
	input.apiVersion == "rbac.authorization.k8s.io/v1beta1"
	input.kind == "RoleBinding"
	msg := "rbac.authorization.k8s.io/v1beta1 RoleBinding is removed in 1.22+. use rbac.authorization.k8s.io/v1 RoleBinding"
}

deny[msg] {
	input.apiVersion == "rbac.authorization.k8s.io/v1beta1"
	input.kind == "RoleBindingList"
	msg := "rbac.authorization.k8s.io/v1beta1 RoleBindingList is removed in 1.22+. use rbac.authorization.k8s.io/v1 RoleBindingList"
}

deny[msg] {
	input.apiVersion == "rbac.authorization.k8s.io/v1beta1"
	input.kind == "RoleList"
	msg := "rbac.authorization.k8s.io/v1beta1 RoleList is removed in 1.22+. use rbac.authorization.k8s.io/v1 RoleList"
}

deny[msg] {
	input.apiVersion == "scheduling.k8s.io/v1beta1"
	input.kind == "PriorityClass"
	msg := "scheduling.k8s.io/v1beta1 PriorityClass is removed in 1.22+. use scheduling.k8s.io/v1 PriorityClass"
}

deny[msg] {
	input.apiVersion == "scheduling.k8s.io/v1beta1"
	input.kind == "PriorityClassList"
	msg := "scheduling.k8s.io/v1beta1 PriorityClassList is removed in 1.22+. use scheduling.k8s.io/v1 PriorityClassList"
}

deny[msg] {
	input.apiVersion == "storage.k8s.io/v1beta1"
	input.kind == "CSIDriver"
	msg := "storage.k8s.io/v1beta1 CSIDriver is removed in 1.22+. use storage.k8s.io/v1 CSIDriver"
}

deny[msg] {
	input.apiVersion == "storage.k8s.io/v1beta1"
	input.kind == "CSIDriverList"
	msg := "storage.k8s.io/v1beta1 CSIDriverList is removed in 1.22+. use storage.k8s.io/v1 CSIDriverList"
}

deny[msg] {
	input.apiVersion == "storage.k8s.io/v1beta1"
	input.kind == "CSINode"
	msg := "storage.k8s.io/v1beta1 CSINode is removed in 1.22+. use storage.k8s.io/v1 CSINode"
}

deny[msg] {
	input.apiVersion == "storage.k8s.io/v1beta1"
	input.kind == "CSINodeList"
	msg := "storage.k8s.io/v1beta1 CSINodeList is removed in 1.22+. use storage.k8s.io/v1 CSINode"
}

deny[msg] {
	input.apiVersion == "storage.k8s.io/v1beta1"
	input.kind == "StorageClass"
	msg := "storage.k8s.io/v1beta1 StorageClass is removed in 1.22+. use storage.k8s.io/v1 StorageClass"
}

deny[msg] {
	input.apiVersion == "storage.k8s.io/v1beta1"
	input.kind == "StorageClassList"
	msg := "storage.k8s.io/v1beta1 StorageClassList is removed in 1.22+. use storage.k8s.io/v1 StorageClassList"
}

deny[msg] {
	input.apiVersion == "storage.k8s.io/v1beta1"
	input.kind == "VolumeAttachment"
	msg := "storage.k8s.io/v1beta1 VolumeAttachment is removed in 1.22+. use storage.k8s.io/v1 VolumeAttachment"
}

deny[msg] {
	input.apiVersion == "storage.k8s.io/v1beta1"
	input.kind == "VolumeAttachmentList"
	msg := "storage.k8s.io/v1beta1 VolumeAttachmentList is removed in 1.22+. use storage.k8s.io/v1 VolumeAttachmentList"
}

warn[msg] {
	input.apiVersion == "autoscaling/v2beta1"
	input.kind == "HorizontalPodAutoscaler"
	msg := "autoscaling/v2beta1 HorizontalPodAutoscaler is deprecated in 1.22+. use autoscaling/v2 HorizontalPodAutoscaler"
}

warn[msg] {
	input.apiVersion == "autoscaling/v2beta1"
	input.kind == "HorizontalPodAutoscalerList"
	msg := "autoscaling/v2beta1 HorizontalPodAutoscalerList is deprecated in 1.22+. use autoscaling/v2beta2 HorizontalPodAutoscalerList"
}

warn[msg] {
	input.apiVersion == "autoscaling/v2beta2"
	input.kind == "HorizontalPodAutoscalerList"
	msg := "autoscaling/v2beta2 HorizontalPodAutoscalerList is deprecated in 1.22+"
}

warn[msg] {
	input.apiVersion == "batch/v1beta1"
	input.kind == "JobTemplate"
	msg := "batch/v1beta1 JobTemplate is deprecated in 1.22+"
}

warn[msg] {
	input.apiVersion == "events.k8s.io/v1beta1"
	input.kind == "Event"
	msg := "events.k8s.io/v1beta1 Event is deprecated in 1.22+"
}

warn[msg] {
	input.apiVersion == "events.k8s.io/v1beta1"
	input.kind == "EventList"
	msg := "events.k8s.io/v1beta1 EventList is deprecated in 1.22+"
}

warn[msg] {
	input.apiVersion == "node.k8s.io/v1beta1"
	input.kind == "RuntimeClass"
	msg := "node.k8s.io/v1beta1 RuntimeClass is deprecated in 1.22+"
}

warn[msg] {
	input.apiVersion == "node.k8s.io/v1beta1"
	input.kind == "RuntimeClassList"
	msg := "node.k8s.io/v1beta1 RuntimeClassList is deprecated in 1.22+"
}

warn[msg] {
	input.apiVersion == "policy/v1beta1"
	input.kind == "Eviction"
	msg := "policy/v1beta1 Eviction is deprecated in 1.22+"
}
