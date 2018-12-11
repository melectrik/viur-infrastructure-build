BASEDR=$(dirname ${0})
source ${BASEDR}/../../project-happydeal-viur.env

gcloud config set compute/zone ${MY_CLUSTER_ZONE}

gcloud container clusters create ${MY_CLUSTER_NAME} --project=${MY_PROJECT_ID} --num-nodes=${MY_CLUSTER_NODENUMBER_START}

gcloud compute instances list --project=${MY_PROJECT_ID}

kubectl run ${MY_DEPLOYMENT_NAME} --image=${MY_CONTAINER_REGISTRY}/${MY_PROJECT_ID}/${MY_CONTAINER_NAME} :${MY_PROJECT_VERSION} --port=${MY_PORT_INTERNAL}

kubectl get pods

kubectl expose deployment ${MY_DEPLOYMENT_NAME} --type=LoadBalancer --port 80 --target-port ${MY_PORT_INTERNAL}

kubectl get service ${MY_DEPLOYMENT_NAME}


