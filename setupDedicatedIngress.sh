oc login -u system:admin
oc project myproject
oc adm policy add-cluster-role-to-user cluster-reader -z default 
oc apply -f dedicatedsvcingress.yml
oc expose svc l5d-admin
oc expose svc l5d-incoming --hostname api.acme.com
