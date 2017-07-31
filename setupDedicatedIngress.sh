oc login -u system:admin
oc project myproject
oc adm policy add-cluster-role-to-user cluster-reader -z default 
oc apply -f dedicatedsvcingress.yml
oc expose svc l5d-admin
oc expose svc l5d-incoming --hostname myproject.acme.com
# create an entry in /etc/hosts for myproject.acme.com
# pointing to the exposed IP address of the l5d-incoming route
# then use curl myproject.acme.com/rest/hello to test it out
