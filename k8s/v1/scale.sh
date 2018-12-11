BASEDR=$(dirname ${0})
source ${BASEDR}/../../project-happydeal-viur.env

kubectl scale deployment ${MY_DEPLOYMENT_NAME} --replicas=${MY_CLUSTER_NODENUMBER_SCALE}
 
kubectl get deployment ${MY_DEPLOYMENT_NAME}

kubectl get pods

