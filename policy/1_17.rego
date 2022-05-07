package main

warn[msg] {
	input.apiVersion == "rbac.authorization.k8s.io/v1beta1"
	input.kind == "ClusterRoleBindingList"
	msg := "rbac.authorization.k8s.io/v1beta1 ClusterRoleBindingList is deprecated in 1.17+. use rbac.authorization.k8s.io/v1 ClusterRoleBindingList"
}

warn[msg] {
	input.apiVersion == "rbac.authorization.k8s.io/v1beta1"
	input.kind == "RoleBinding"
	msg := "rbac.authorization.k8s.io/v1beta1 RoleBinding is deprecated in 1.17+. use rbac.authorization.k8s.io/v1 RoleBinding"
}

warn[msg] {
	input.apiVersion == "rbac.authorization.k8s.io/v1beta1"
	input.kind == "RoleList"
	msg := "rbac.authorization.k8s.io/v1beta1 RoleList is deprecated in 1.17+. use rbac.authorization.k8s.io/v1 RoleList"
}

warn[msg] {
	input.apiVersion == "storage.k8s.io/v1beta1"
	input.kind == "CSINodeList"
	msg := "storage.k8s.io/v1beta1 CSINodeList is deprecated in 1.17+. use storage.k8s.io/v1 CSINode"
}

warn[msg] {
	input.apiVersion == "rbac.authorization.k8s.io/v1beta1"
	input.kind == "ClusterRole"
	msg := "rbac.authorization.k8s.io/v1beta1 ClusterRole is deprecated in 1.17+. use rbac.authorization.k8s.io/v1 ClusterRole"
}

warn[msg] {
	input.apiVersion == "rbac.authorization.k8s.io/v1beta1"
	input.kind == "ClusterRoleBinding"
	msg := "rbac.authorization.k8s.io/v1beta1 ClusterRoleBinding is deprecated in 1.17+. use rbac.authorization.k8s.io/v1 ClusterRoleBinding"
}

warn[msg] {
	input.apiVersion == "storage.k8s.io/v1beta1"
	input.kind == "CSINode"
	msg := "storage.k8s.io/v1beta1 CSINode is deprecated in 1.17+. use storage.k8s.io/v1 CSINode"
}

warn[msg] {
	input.apiVersion == "rbac.authorization.k8s.io/v1beta1"
	input.kind == "Role"
	msg := "rbac.authorization.k8s.io/v1beta1 Role is deprecated in 1.17+. use rbac.authorization.k8s.io/v1 Role"
}

warn[msg] {
	input.apiVersion == "rbac.authorization.k8s.io/v1beta1"
	input.kind == "RoleBindingList"
	msg := "rbac.authorization.k8s.io/v1beta1 RoleBindingList is deprecated in 1.17+. use rbac.authorization.k8s.io/v1 RoleBindingList"
}

warn[msg] {
	input.apiVersion == "rbac.authorization.k8s.io/v1beta1"
	input.kind == "ClusterRoleList"
	msg := "rbac.authorization.k8s.io/v1beta1 ClusterRoleList is deprecated in 1.17+. use rbac.authorization.k8s.io/v1 ClusterRoleList"
}