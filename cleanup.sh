docker rmi $(docker images | grep openshift3 | awk '{print $1":"$2}')
