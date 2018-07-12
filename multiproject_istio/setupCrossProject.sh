oc2 login -u system:admin
oc2 new-project hello
oc2 project hello
#oc label namespace hello istio-injection=enabled
#oc2 adm policy add-scc-to-user privileged -z default -n hello
oc2 apply -f hello.yml
#oc2 apply -f ingress_hello.yml
oc2 new-project world
oc2 project world
#oc label namespace world istio-injection=enabled
#oc2 adm policy add-scc-to-user privileged -z default -n world
oc2 apply -f world.yml
#oc2 apply -f ingress_world.yml
#oc2 get route -n istio-system
