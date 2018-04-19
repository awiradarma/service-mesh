oc login -u system:admin
oc new-project hello
oc project hello
oc label namespace hello istio-injection=enabled
oc adm policy add-scc-to-user privileged -z default -n hello
oc apply -f hello.yml
oc apply -f ingress_hello.yml
oc new-project world
oc project world
oc label namespace world istio-injection=enabled
oc adm policy add-scc-to-user privileged -z default -n world
oc apply -f world.yml
oc apply -f ingress_world.yml
oc get route -n istio-system
