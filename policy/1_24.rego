package main

warn[msg] {
	input.apiVersion == "storage.k8s.io/v1beta1"
	input.kind == "CSIStorageCapacityList"
	msg := "storage.k8s.io/v1beta1 CSIStorageCapacityList is deprecated in 1.24+"
}

deny[msg] {
	input.apiVersion == "storage.k8s.io/v1alpha1"
	input.kind == "CSIStorageCapacityList"
	msg := "storage.k8s.io/v1alpha1 CSIStorageCapacityList is removed in 1.24+. use storage.k8s.io/v1beta1 CSIStorageCapacityList"
}

deny[msg] {
	input.apiVersion == "storage.k8s.io/v1alpha1"
	input.kind == "VolumeAttachmentList"
	msg := "storage.k8s.io/v1alpha1 VolumeAttachmentList is removed in 1.24+. use storage.k8s.io/v1 VolumeAttachmentList"
}

deny[msg] {
	input.apiVersion == "storage.k8s.io/v1alpha1"
	input.kind == "VolumeAttachment"
	msg := "storage.k8s.io/v1alpha1 VolumeAttachment is removed in 1.24+. use storage.k8s.io/v1 VolumeAttachment"
}

deny[msg] {
	input.apiVersion == "storage.k8s.io/v1alpha1"
	input.kind == "CSIStorageCapacity"
	msg := "storage.k8s.io/v1alpha1 CSIStorageCapacity is removed in 1.24+. use storage.k8s.io/v1beta1 CSIStorageCapacity"
}

warn[msg] {
	input.apiVersion == "storage.k8s.io/v1beta1"
	input.kind == "CSIStorageCapacity"
	msg := "storage.k8s.io/v1beta1 CSIStorageCapacity is deprecated in 1.24+"
}