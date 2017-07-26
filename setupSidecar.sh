oc login -u system:admin
oc project myproject
oc adm policy add-scc-to-user privileged -z default
oc policy add-role-to-user view -z default
oc apply -f sidecar.yml
oc expose svc hello
oc expose svc hello-admin
oc expose svc world-v1
oc expose svc world-v1-admin
