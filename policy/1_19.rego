package main

warn[msg] {
	input.apiVersion == "admission.k8s.io/v1beta1"
	input.kind == "AdmissionReview"
	msg := "admission.k8s.io/v1beta1 AdmissionReview is deprecated in 1.19+. use admission.k8s.io/v1 AdmissionReview"
}

warn[msg] {
	input.apiVersion == "authentication.k8s.io/v1beta1"
	input.kind == "TokenReview"
	msg := "authentication.k8s.io/v1beta1 TokenReview is deprecated in 1.19+. use authentication.k8s.io/v1 TokenReview"
}

warn[msg] {
	input.apiVersion == "authorization.k8s.io/v1beta1"
	input.kind == "LocalSubjectAccessReview"
	msg := "authorization.k8s.io/v1beta1 LocalSubjectAccessReview is deprecated in 1.19+. use authorization.k8s.io/v1 LocalSubjectAccessReview"
}

warn[msg] {
	input.apiVersion == "authorization.k8s.io/v1beta1"
	input.kind == "SelfSubjectAccessReview"
	msg := "authorization.k8s.io/v1beta1 SelfSubjectAccessReview is deprecated in 1.19+. use authorization.k8s.io/v1 SelfSubjectAccessReview"
}

warn[msg] {
	input.apiVersion == "authorization.k8s.io/v1beta1"
	input.kind == "SelfSubjectRulesReview"
	msg := "authorization.k8s.io/v1beta1 SelfSubjectRulesReview is deprecated in 1.19+. use authorization.k8s.io/v1 SelfSubjectRulesReview"
}

warn[msg] {
	input.apiVersion == "authorization.k8s.io/v1beta1"
	input.kind == "SubjectAccessReview"
	msg := "authorization.k8s.io/v1beta1 SubjectAccessReview is deprecated in 1.19+. use authorization.k8s.io/v1 SubjectAccessReview"
}

warn[msg] {
	input.apiVersion == "certificates.k8s.io/v1beta1"
	input.kind == "CertificateSigningRequest"
	msg := "certificates.k8s.io/v1beta1 CertificateSigningRequest is deprecated in 1.19+. use certificates.k8s.io/v1 CertificateSigningRequest"
}

warn[msg] {
	input.apiVersion == "certificates.k8s.io/v1beta1"
	input.kind == "CertificateSigningRequestList"
	msg := "certificates.k8s.io/v1beta1 CertificateSigningRequestList is deprecated in 1.19+. use certificates.k8s.io/v1 CertificateSigningRequestList"
}

warn[msg] {
	input.apiVersion == "coordination.k8s.io/v1beta1"
	input.kind == "Lease"
	msg := "coordination.k8s.io/v1beta1 Lease is deprecated in 1.19+. use coordination.k8s.io/v1 Lease"
}

warn[msg] {
	input.apiVersion == "coordination.k8s.io/v1beta1"
	input.kind == "LeaseList"
	msg := "coordination.k8s.io/v1beta1 LeaseList is deprecated in 1.19+. use coordination.k8s.io/v1 LeaseList"
}

warn[msg] {
	input.apiVersion == "networking.k8s.io/v1beta1"
	input.kind == "Ingress"
	msg := "networking.k8s.io/v1beta1 Ingress is deprecated in 1.19+. use networking.k8s.io/v1 Ingress"
}

warn[msg] {
	input.apiVersion == "networking.k8s.io/v1beta1"
	input.kind == "IngressClass"
	msg := "networking.k8s.io/v1beta1 IngressClass is deprecated in 1.19+. use networking.k8s.io/v1 IngressClassList"
}

warn[msg] {
	input.apiVersion == "networking.k8s.io/v1beta1"
	input.kind == "IngressClassList"
	msg := "networking.k8s.io/v1beta1 IngressClassList is deprecated in 1.19+. use networking.k8s.io/v1 IngressClassList"
}

warn[msg] {
	input.apiVersion == "networking.k8s.io/v1beta1"
	input.kind == "IngressList"
	msg := "networking.k8s.io/v1beta1 IngressList is deprecated in 1.19+. use networking.k8s.io/v1 IngressList"
}

warn[msg] {
	input.apiVersion == "storage.k8s.io/v1beta1"
	input.kind == "CSIDriver"
	msg := "storage.k8s.io/v1beta1 CSIDriver is deprecated in 1.19+. use storage.k8s.io/v1 CSIDriver"
}

warn[msg] {
	input.apiVersion == "storage.k8s.io/v1beta1"
	input.kind == "CSIDriverList"
	msg := "storage.k8s.io/v1beta1 CSIDriverList is deprecated in 1.19+. use storage.k8s.io/v1 CSIDriverList"
}

warn[msg] {
	input.apiVersion == "storage.k8s.io/v1beta1"
	input.kind == "StorageClass"
	msg := "storage.k8s.io/v1beta1 StorageClass is deprecated in 1.19+. use storage.k8s.io/v1 StorageClass"
}

warn[msg] {
	input.apiVersion == "storage.k8s.io/v1beta1"
	input.kind == "StorageClassList"
	msg := "storage.k8s.io/v1beta1 StorageClassList is deprecated in 1.19+. use storage.k8s.io/v1 StorageClassList"
}

warn[msg] {
	input.apiVersion == "storage.k8s.io/v1beta1"
	input.kind == "VolumeAttachment"
	msg := "storage.k8s.io/v1beta1 VolumeAttachment is deprecated in 1.19+. use storage.k8s.io/v1 VolumeAttachment"
}

warn[msg] {
	input.apiVersion == "storage.k8s.io/v1beta1"
	input.kind == "VolumeAttachmentList"
	msg := "storage.k8s.io/v1beta1 VolumeAttachmentList is deprecated in 1.19+. use storage.k8s.io/v1 VolumeAttachmentList"
}

warn[msg] {
	input.apiVersion == "v1"
	input.kind == "ComponentStatus"
	msg := "v1 ComponentStatus is deprecated in 1.19+"
}

warn[msg] {
	input.apiVersion == "v1"
	input.kind == "ComponentStatusList"
	msg := "v1 ComponentStatusList is deprecated in 1.19+"
}
