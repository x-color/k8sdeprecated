package main

warn[msg] {
	input.apiVersion == "extensions/v1beta1"
	input.kind == "Scale"
	msg := "extensions/v1beta1 Scale is deprecated in 1.2+"
}
