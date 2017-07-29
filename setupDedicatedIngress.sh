oc login -u system:admin
oc project myproject
oc adm policy add-scc-to-user privileged -z default
oc policy add-role-to-user view -z default
oc adm policy add-cluster-role-to-user cluster-reader -z default # TODO: try to change to cluster-reader or change namespace for ingress controller to watch only its own ns and remove this line
oc apply -f dedicatedsvcingress.yml
oc expose svc l5d-admin
oc expose svc l5d-incoming --hostname api.acme.com
