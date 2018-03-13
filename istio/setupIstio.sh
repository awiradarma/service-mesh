oc login -u system:admin
oc project default
oc adm policy add-scc-to-user anyuid -z default
oc adm policy add-scc-to-user privileged -z default
oc patch scc/privileged --patch {\"allowedCapabilities\":[\"NET_ADMIN\"]}
oc adm policy add-cluster-role-to-user cluster-admin -z istio-manager-service-account
oc adm policy add-cluster-role-to-user cluster-admin -z istio-ingress-service-account
oc adm policy add-cluster-role-to-user cluster-admin -z default
oc adm policy add-scc-to-user anyuid -z istio-ingress-service-account
oc adm policy add-scc-to-user privileged -z istio-ingress-service-account
oc adm policy add-scc-to-user anyuid -z istio-manager-service-account
oc adm policy add-scc-to-user privileged -z istio-manager-service-account
oc apply -f istio/install/kubernetes/istio.yaml
oc apply -f istio/install/kubernetes/addons/prometheus.yaml
oc apply -f istio/install/kubernetes/addons/grafana.yaml
oc apply -f istio/install/kubernetes/addons/servicegraph.yaml
oc apply -f bookinfo_injected.yaml
oc expose svc servicegraph
oc expose svc istio-ingress
oc expose svc grafana
oc adm policy add-cluster-role-to-user cluster-admin admin
