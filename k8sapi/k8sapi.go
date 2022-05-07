package k8sapi

import (
	"errors"
	"reflect"
	
  	admissionregistrationv1 "k8s.io/api/admissionregistration/v1"
  	admissionregistrationv1beta1 "k8s.io/api/admissionregistration/v1beta1"
  	admissionv1 "k8s.io/api/admission/v1"
  	admissionv1beta1 "k8s.io/api/admission/v1beta1"
  	apiserverinternalv1alpha1 "k8s.io/api/apiserverinternal/v1alpha1"
  	appsv1 "k8s.io/api/apps/v1"
  	appsv1beta1 "k8s.io/api/apps/v1beta1"
  	appsv1beta2 "k8s.io/api/apps/v1beta2"
  	authenticationv1 "k8s.io/api/authentication/v1"
  	authenticationv1beta1 "k8s.io/api/authentication/v1beta1"
  	authorizationv1 "k8s.io/api/authorization/v1"
  	authorizationv1beta1 "k8s.io/api/authorization/v1beta1"
  	autoscalingv1 "k8s.io/api/autoscaling/v1"
  	autoscalingv2 "k8s.io/api/autoscaling/v2"
  	autoscalingv2beta1 "k8s.io/api/autoscaling/v2beta1"
  	autoscalingv2beta2 "k8s.io/api/autoscaling/v2beta2"
  	batchv1 "k8s.io/api/batch/v1"
  	batchv1beta1 "k8s.io/api/batch/v1beta1"
  	certificatesv1 "k8s.io/api/certificates/v1"
  	certificatesv1beta1 "k8s.io/api/certificates/v1beta1"
  	coordinationv1 "k8s.io/api/coordination/v1"
  	coordinationv1beta1 "k8s.io/api/coordination/v1beta1"
  	corev1 "k8s.io/api/core/v1"
  	discoveryv1 "k8s.io/api/discovery/v1"
  	discoveryv1beta1 "k8s.io/api/discovery/v1beta1"
  	eventsv1 "k8s.io/api/events/v1"
  	eventsv1beta1 "k8s.io/api/events/v1beta1"
  	extensionsv1beta1 "k8s.io/api/extensions/v1beta1"
  	flowcontrolv1alpha1 "k8s.io/api/flowcontrol/v1alpha1"
  	flowcontrolv1beta1 "k8s.io/api/flowcontrol/v1beta1"
  	flowcontrolv1beta2 "k8s.io/api/flowcontrol/v1beta2"
  	imagepolicyv1alpha1 "k8s.io/api/imagepolicy/v1alpha1"
  	networkingv1 "k8s.io/api/networking/v1"
  	networkingv1beta1 "k8s.io/api/networking/v1beta1"
  	nodev1 "k8s.io/api/node/v1"
  	nodev1alpha1 "k8s.io/api/node/v1alpha1"
  	nodev1beta1 "k8s.io/api/node/v1beta1"
  	policyv1 "k8s.io/api/policy/v1"
  	policyv1beta1 "k8s.io/api/policy/v1beta1"
  	rbacv1 "k8s.io/api/rbac/v1"
  	rbacv1alpha1 "k8s.io/api/rbac/v1alpha1"
  	rbacv1beta1 "k8s.io/api/rbac/v1beta1"
  	schedulingv1 "k8s.io/api/scheduling/v1"
  	schedulingv1alpha1 "k8s.io/api/scheduling/v1alpha1"
  	schedulingv1beta1 "k8s.io/api/scheduling/v1beta1"
  	storagev1 "k8s.io/api/storage/v1"
  	storagev1alpha1 "k8s.io/api/storage/v1alpha1"
  	storagev1beta1 "k8s.io/api/storage/v1beta1"
	"k8s.io/apimachinery/pkg/runtime"
	"k8s.io/apimachinery/pkg/runtime/schema"
)

type API struct {
	GroupVersion schema.GroupVersion
	Kind         string
	Obj          runtime.Object
}

var sc = runtime.NewScheme()
var apis []API

func List() ([]API, error) {
	return list()
}

func list() ([]API, error) {
	if len(apis) > 0 {
		return apis, nil
	}
	if len(sc.AllKnownTypes()) == 0 {
		if err := addApis(); err != nil {
			return nil, err
		}
	}

	apis = make([]API, 0)
	for k, v := range sc.AllKnownTypes() {
		if k.Version == "__internal" {
			continue
		}
		o, ok := reflect.New(v).Interface().(runtime.Object)
		if !ok {
			return nil, errors.New("failed to get apis")
		}
		apis = append(apis, API{
			GroupVersion: k.GroupVersion(),
			Kind:         k.Kind,
			Obj:          o,
		})
	}

	return apis, nil
}

func addApis() error {
	if err := admissionregistrationv1.AddToScheme(sc); err != nil {
		return err
	}
	if err := admissionregistrationv1beta1.AddToScheme(sc); err != nil {
		return err
	}
	if err := admissionv1.AddToScheme(sc); err != nil {
		return err
	}
	if err := admissionv1beta1.AddToScheme(sc); err != nil {
		return err
	}
	if err := apiserverinternalv1alpha1.AddToScheme(sc); err != nil {
		return err
	}
	if err := appsv1.AddToScheme(sc); err != nil {
		return err
	}
	if err := appsv1beta1.AddToScheme(sc); err != nil {
		return err
	}
	if err := appsv1beta2.AddToScheme(sc); err != nil {
		return err
	}
	if err := authenticationv1.AddToScheme(sc); err != nil {
		return err
	}
	if err := authenticationv1beta1.AddToScheme(sc); err != nil {
		return err
	}
	if err := authorizationv1.AddToScheme(sc); err != nil {
		return err
	}
	if err := authorizationv1beta1.AddToScheme(sc); err != nil {
		return err
	}
	if err := autoscalingv1.AddToScheme(sc); err != nil {
		return err
	}
	if err := autoscalingv2.AddToScheme(sc); err != nil {
		return err
	}
	if err := autoscalingv2beta1.AddToScheme(sc); err != nil {
		return err
	}
	if err := autoscalingv2beta2.AddToScheme(sc); err != nil {
		return err
	}
	if err := batchv1.AddToScheme(sc); err != nil {
		return err
	}
	if err := batchv1beta1.AddToScheme(sc); err != nil {
		return err
	}
	if err := certificatesv1.AddToScheme(sc); err != nil {
		return err
	}
	if err := certificatesv1beta1.AddToScheme(sc); err != nil {
		return err
	}
	if err := coordinationv1.AddToScheme(sc); err != nil {
		return err
	}
	if err := coordinationv1beta1.AddToScheme(sc); err != nil {
		return err
	}
	if err := corev1.AddToScheme(sc); err != nil {
		return err
	}
	if err := discoveryv1.AddToScheme(sc); err != nil {
		return err
	}
	if err := discoveryv1beta1.AddToScheme(sc); err != nil {
		return err
	}
	if err := eventsv1.AddToScheme(sc); err != nil {
		return err
	}
	if err := eventsv1beta1.AddToScheme(sc); err != nil {
		return err
	}
	if err := extensionsv1beta1.AddToScheme(sc); err != nil {
		return err
	}
	if err := flowcontrolv1alpha1.AddToScheme(sc); err != nil {
		return err
	}
	if err := flowcontrolv1beta1.AddToScheme(sc); err != nil {
		return err
	}
	if err := flowcontrolv1beta2.AddToScheme(sc); err != nil {
		return err
	}
	if err := imagepolicyv1alpha1.AddToScheme(sc); err != nil {
		return err
	}
	if err := networkingv1.AddToScheme(sc); err != nil {
		return err
	}
	if err := networkingv1beta1.AddToScheme(sc); err != nil {
		return err
	}
	if err := nodev1.AddToScheme(sc); err != nil {
		return err
	}
	if err := nodev1alpha1.AddToScheme(sc); err != nil {
		return err
	}
	if err := nodev1beta1.AddToScheme(sc); err != nil {
		return err
	}
	if err := policyv1.AddToScheme(sc); err != nil {
		return err
	}
	if err := policyv1beta1.AddToScheme(sc); err != nil {
		return err
	}
	if err := rbacv1.AddToScheme(sc); err != nil {
		return err
	}
	if err := rbacv1alpha1.AddToScheme(sc); err != nil {
		return err
	}
	if err := rbacv1beta1.AddToScheme(sc); err != nil {
		return err
	}
	if err := schedulingv1.AddToScheme(sc); err != nil {
		return err
	}
	if err := schedulingv1alpha1.AddToScheme(sc); err != nil {
		return err
	}
	if err := schedulingv1beta1.AddToScheme(sc); err != nil {
		return err
	}
	if err := storagev1.AddToScheme(sc); err != nil {
		return err
	}
	if err := storagev1alpha1.AddToScheme(sc); err != nil {
		return err
	}
	if err := storagev1beta1.AddToScheme(sc); err != nil {
		return err
	}
	return nil
}
