BASEDR=$(dirname ${0})
source ${BASEDR}/../../project-happydeal-viur.env

kubectl set image deployment/${MY_DEPLOYMENT_NAME} ${MY_DEPLOYMENT_NAME}=${MY_CONTAINER_REGISTRY}/${MY_PROJECT_ID}/${MY_CONTAINER_NAME}:${MY_PROJECT_VERSION}
