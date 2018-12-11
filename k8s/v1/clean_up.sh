BASEDR=$(dirname ${0})
source ${BASEDR}/../../project-happydeal-viur.env

echo "Executing: " kubectl delete service ${MY_DEPLOYMENT_NAME} --project=${MY_PROJECT_ID}
kubectl delete service ${MY_DEPLOYMENT_NAME} --project=${MY_PROJECT_ID}

echo "Executing: " gcloud container clusters delete ${MY_CLUSTER_NAME} --project=${MY_PROJECT_ID}
gcloud container clusters delete ${MY_CLUSTER_NAME} --project=${MY_PROJECT_ID}


