package main

deny[msg] {
	input.apiVersion == "events.k8s.io/v1beta1"
	input.kind == "EventList"
	msg := "events.k8s.io/v1beta1 EventList is removed in 1.25+"
}

deny[msg] {
	input.apiVersion == "policy/v1beta1"
	input.kind == "PodDisruptionBudget"
	msg := "policy/v1beta1 PodDisruptionBudget is removed in 1.25+. use policy/v1 PodDisruptionBudget"
}

deny[msg] {
	input.apiVersion == "batch/v1beta1"
	input.kind == "JobTemplate"
	msg := "batch/v1beta1 JobTemplate is removed in 1.25+"
}

deny[msg] {
	input.apiVersion == "autoscaling/v2beta1"
	input.kind == "HorizontalPodAutoscalerList"
	msg := "autoscaling/v2beta1 HorizontalPodAutoscalerList is removed in 1.25+. use autoscaling/v2beta2 HorizontalPodAutoscalerList"
}

deny[msg] {
	input.apiVersion == "autoscaling/v2beta2"
	input.kind == "HorizontalPodAutoscalerList"
	msg := "autoscaling/v2beta2 HorizontalPodAutoscalerList is removed in 1.25+"
}

deny[msg] {
	input.apiVersion == "node.k8s.io/v1beta1"
	input.kind == "RuntimeClass"
	msg := "node.k8s.io/v1beta1 RuntimeClass is removed in 1.25+"
}

deny[msg] {
	input.apiVersion == "discovery.k8s.io/v1beta1"
	input.kind == "EndpointSliceList"
	msg := "discovery.k8s.io/v1beta1 EndpointSliceList is removed in 1.25+. use discovery.k8s.io/v1 EndpointSlice"
}

deny[msg] {
	input.apiVersion == "events.k8s.io/v1beta1"
	input.kind == "Event"
	msg := "events.k8s.io/v1beta1 Event is removed in 1.25+"
}

deny[msg] {
	input.apiVersion == "discovery.k8s.io/v1beta1"
	input.kind == "EndpointSlice"
	msg := "discovery.k8s.io/v1beta1 EndpointSlice is removed in 1.25+. use discovery.k8s.io/v1 EndpointSlice"
}

deny[msg] {
	input.apiVersion == "policy/v1beta1"
	input.kind == "PodDisruptionBudgetList"
	msg := "policy/v1beta1 PodDisruptionBudgetList is removed in 1.25+. use policy/v1 PodDisruptionBudgetList"
}

deny[msg] {
	input.apiVersion == "autoscaling/v2beta1"
	input.kind == "HorizontalPodAutoscaler"
	msg := "autoscaling/v2beta1 HorizontalPodAutoscaler is removed in 1.25+. use autoscaling/v2 HorizontalPodAutoscaler"
}

deny[msg] {
	input.apiVersion == "policy/v1beta1"
	input.kind == "PodSecurityPolicyList"
	msg := "policy/v1beta1 PodSecurityPolicyList is removed in 1.25+"
}

deny[msg] {
	input.apiVersion == "policy/v1beta1"
	input.kind == "PodSecurityPolicy"
	msg := "policy/v1beta1 PodSecurityPolicy is removed in 1.25+"
}

deny[msg] {
	input.apiVersion == "policy/v1beta1"
	input.kind == "Eviction"
	msg := "policy/v1beta1 Eviction is removed in 1.25+"
}

deny[msg] {
	input.apiVersion == "batch/v1beta1"
	input.kind == "CronJobList"
	msg := "batch/v1beta1 CronJobList is removed in 1.25+. use batch/v1 CronJobList"
}

deny[msg] {
	input.apiVersion == "node.k8s.io/v1beta1"
	input.kind == "RuntimeClassList"
	msg := "node.k8s.io/v1beta1 RuntimeClassList is removed in 1.25+"
}

deny[msg] {
	input.apiVersion == "batch/v1beta1"
	input.kind == "CronJob"
	msg := "batch/v1beta1 CronJob is removed in 1.25+. use batch/v1 CronJob"
}