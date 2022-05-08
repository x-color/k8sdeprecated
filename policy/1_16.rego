package main

deny[msg] {
	input.apiVersion == "apps/v1beta1"
	input.kind == "ControllerRevision"
	msg := "apps/v1beta1 ControllerRevision is removed in 1.16+. use apps/v1 ControllerRevision"
}

deny[msg] {
	input.apiVersion == "apps/v1beta1"
	input.kind == "ControllerRevisionList"
	msg := "apps/v1beta1 ControllerRevisionList is removed in 1.16+. use apps/v1 ControllerRevisionList"
}

deny[msg] {
	input.apiVersion == "apps/v1beta1"
	input.kind == "Deployment"
	msg := "apps/v1beta1 Deployment is removed in 1.16+. use apps/v1 Deployment"
}

deny[msg] {
	input.apiVersion == "apps/v1beta1"
	input.kind == "DeploymentList"
	msg := "apps/v1beta1 DeploymentList is removed in 1.16+. use apps/v1 DeploymentList"
}

deny[msg] {
	input.apiVersion == "apps/v1beta1"
	input.kind == "DeploymentRollback"
	msg := "apps/v1beta1 DeploymentRollback is removed in 1.16+. use apps/v1 DeploymentRollback"
}

deny[msg] {
	input.apiVersion == "apps/v1beta1"
	input.kind == "Scale"
	msg := "apps/v1beta1 Scale is removed in 1.16+. use autoscaling/v1 Scale"
}

deny[msg] {
	input.apiVersion == "apps/v1beta1"
	input.kind == "StatefulSet"
	msg := "apps/v1beta1 StatefulSet is removed in 1.16+. use apps/v1 StatefulSet"
}

deny[msg] {
	input.apiVersion == "apps/v1beta1"
	input.kind == "StatefulSetList"
	msg := "apps/v1beta1 StatefulSetList is removed in 1.16+. use apps/v1 StatefulSetList"
}

deny[msg] {
	input.apiVersion == "apps/v1beta2"
	input.kind == "ControllerRevision"
	msg := "apps/v1beta2 ControllerRevision is removed in 1.16+. use apps/v1 ControllerRevision"
}

deny[msg] {
	input.apiVersion == "apps/v1beta2"
	input.kind == "ControllerRevisionList"
	msg := "apps/v1beta2 ControllerRevisionList is removed in 1.16+. use apps/v1 ControllerRevisionList"
}

deny[msg] {
	input.apiVersion == "apps/v1beta2"
	input.kind == "DaemonSet"
	msg := "apps/v1beta2 DaemonSet is removed in 1.16+. use apps/v1 DaemonSet"
}

deny[msg] {
	input.apiVersion == "apps/v1beta2"
	input.kind == "DaemonSetList"
	msg := "apps/v1beta2 DaemonSetList is removed in 1.16+. use apps/v1 DaemonSetList"
}

deny[msg] {
	input.apiVersion == "apps/v1beta2"
	input.kind == "Deployment"
	msg := "apps/v1beta2 Deployment is removed in 1.16+. use apps/v1 Deployment"
}

deny[msg] {
	input.apiVersion == "apps/v1beta2"
	input.kind == "DeploymentList"
	msg := "apps/v1beta2 DeploymentList is removed in 1.16+. use apps/v1 DeploymentList"
}

deny[msg] {
	input.apiVersion == "apps/v1beta2"
	input.kind == "ReplicaSet"
	msg := "apps/v1beta2 ReplicaSet is removed in 1.16+. use apps/v1 ReplicaSet"
}

deny[msg] {
	input.apiVersion == "apps/v1beta2"
	input.kind == "ReplicaSetList"
	msg := "apps/v1beta2 ReplicaSetList is removed in 1.16+. use apps/v1 ReplicaSetList"
}

deny[msg] {
	input.apiVersion == "apps/v1beta2"
	input.kind == "Scale"
	msg := "apps/v1beta2 Scale is removed in 1.16+. use autoscaling/v1 Scale"
}

deny[msg] {
	input.apiVersion == "apps/v1beta2"
	input.kind == "StatefulSet"
	msg := "apps/v1beta2 StatefulSet is removed in 1.16+. use apps/v1 StatefulSet"
}

deny[msg] {
	input.apiVersion == "apps/v1beta2"
	input.kind == "StatefulSetList"
	msg := "apps/v1beta2 StatefulSetList is removed in 1.16+. use apps/v1 StatefulSetList"
}

deny[msg] {
	input.apiVersion == "extensions/v1beta1"
	input.kind == "DaemonSet"
	msg := "extensions/v1beta1 DaemonSet is removed in 1.16+. use apps/v1 DaemonSet"
}

deny[msg] {
	input.apiVersion == "extensions/v1beta1"
	input.kind == "DaemonSetList"
	msg := "extensions/v1beta1 DaemonSetList is removed in 1.16+. use apps/v1 DaemonSetList"
}

deny[msg] {
	input.apiVersion == "extensions/v1beta1"
	input.kind == "Deployment"
	msg := "extensions/v1beta1 Deployment is removed in 1.16+. use apps/v1 Deployment"
}

deny[msg] {
	input.apiVersion == "extensions/v1beta1"
	input.kind == "DeploymentList"
	msg := "extensions/v1beta1 DeploymentList is removed in 1.16+. use apps/v1 DeploymentList"
}

deny[msg] {
	input.apiVersion == "extensions/v1beta1"
	input.kind == "DeploymentRollback"
	msg := "extensions/v1beta1 DeploymentRollback is removed in 1.16+"
}

deny[msg] {
	input.apiVersion == "extensions/v1beta1"
	input.kind == "NetworkPolicy"
	msg := "extensions/v1beta1 NetworkPolicy is removed in 1.16+. use networking.k8s.io/v1 NetworkPolicy"
}

deny[msg] {
	input.apiVersion == "extensions/v1beta1"
	input.kind == "NetworkPolicyList"
	msg := "extensions/v1beta1 NetworkPolicyList is removed in 1.16+. use networking.k8s.io/v1 NetworkPolicyList"
}

deny[msg] {
	input.apiVersion == "extensions/v1beta1"
	input.kind == "PodSecurityPolicy"
	msg := "extensions/v1beta1 PodSecurityPolicy is removed in 1.16+. use policy/v1beta1 PodSecurityPolicy"
}

deny[msg] {
	input.apiVersion == "extensions/v1beta1"
	input.kind == "PodSecurityPolicyList"
	msg := "extensions/v1beta1 PodSecurityPolicyList is removed in 1.16+. use policy/v1beta1 PodSecurityPolicyList"
}

deny[msg] {
	input.apiVersion == "extensions/v1beta1"
	input.kind == "ReplicaSet"
	msg := "extensions/v1beta1 ReplicaSet is removed in 1.16+. use apps/v1 ReplicaSet"
}

deny[msg] {
	input.apiVersion == "extensions/v1beta1"
	input.kind == "ReplicaSetList"
	msg := "extensions/v1beta1 ReplicaSetList is removed in 1.16+. use apps/v1 ReplicaSetList"
}

deny[msg] {
	input.apiVersion == "extensions/v1beta1"
	input.kind == "Scale"
	msg := "extensions/v1beta1 Scale is removed in 1.16+"
}

warn[msg] {
	input.apiVersion == "admissionregistration.k8s.io/v1beta1"
	input.kind == "MutatingWebhookConfiguration"
	msg := "admissionregistration.k8s.io/v1beta1 MutatingWebhookConfiguration is deprecated in 1.16+. use admissionregistration.k8s.io/v1 MutatingWebhookConfiguration"
}

warn[msg] {
	input.apiVersion == "admissionregistration.k8s.io/v1beta1"
	input.kind == "MutatingWebhookConfigurationList"
	msg := "admissionregistration.k8s.io/v1beta1 MutatingWebhookConfigurationList is deprecated in 1.16+. use admissionregistration.k8s.io/v1 MutatingWebhookConfigurationList"
}

warn[msg] {
	input.apiVersion == "admissionregistration.k8s.io/v1beta1"
	input.kind == "ValidatingWebhookConfiguration"
	msg := "admissionregistration.k8s.io/v1beta1 ValidatingWebhookConfiguration is deprecated in 1.16+. use admissionregistration.k8s.io/v1 ValidatingWebhookConfiguration"
}

warn[msg] {
	input.apiVersion == "admissionregistration.k8s.io/v1beta1"
	input.kind == "ValidatingWebhookConfigurationList"
	msg := "admissionregistration.k8s.io/v1beta1 ValidatingWebhookConfigurationList is deprecated in 1.16+. use admissionregistration.k8s.io/v1 ValidatingWebhookConfigurationList"
}
