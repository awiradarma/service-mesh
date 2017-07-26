oc login -u system:admin
oc project myproject
oc adm policy add-scc-to-user privileged -z default
oc policy add-role-to-user view -z default
oc adm policy add-cluster-role-to-user cluster-admin -z default
oc apply -f linkerd-ingress-controller.yml
oc apply -f step1.yml
oc apply -f hello-world-ingress.yml
oc expose svc l5d
