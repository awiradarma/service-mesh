oc login -u system:admin
oc new-project hello
oc project hello
#oc adm policy add-cluster-role-to-user cluster-reader -z default 
oc apply -f hello.yml
oc new-project world
oc project world
#oc adm policy add-cluster-role-to-user cluster-reader -z default 
oc adm policy add-cluster-role-to-user cluster-admin -z default
oc adm policy add-scc-to-user privileged -z default
oc adm policy add-scc-to-user anyuid -z default
oc apply -f world.yml
