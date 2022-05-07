package main

deny[msg] {
	input.apiVersion == "storage.k8s.io/v1beta1"
	input.kind == "CSIStorageCapacityList"
	msg := "storage.k8s.io/v1beta1 CSIStorageCapacityList is removed in 1.27+"
}

deny[msg] {
	input.apiVersion == "storage.k8s.io/v1beta1"
	input.kind == "CSIStorageCapacity"
	msg := "storage.k8s.io/v1beta1 CSIStorageCapacity is removed in 1.27+"
}