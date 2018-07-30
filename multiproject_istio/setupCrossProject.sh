oc3 login -u system:admin
oc3 new-project hello
oc3 project hello
#oc label namespace hello istio-injection=enabled
#oc2 adm policy add-scc-to-user privileged -z default -n hello
oc3 apply -f hello.yml
#oc2 apply -f ingress_hello.yml
oc3 new-project world
oc3 project world
#oc label namespace world istio-injection=enabled
#oc2 adm policy add-scc-to-user privileged -z default -n world
oc3 apply -f world.yml
#oc2 apply -f ingress_world.yml
#oc2 get route -n istio-system
