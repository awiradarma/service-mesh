oc login -u system:admin
oc project myproject
oc adm policy add-scc-to-user privileged -z default
oc policy add-role-to-user view -z default
oc apply -f step2.yml
oc expose svc l5d-admin
oc expose svc l5d-incoming 
