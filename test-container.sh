!#/bin/bash 

export MY_PROJECT_ID="happydeal-viur"
export MY_PROJECT_VERSION="v3.0.3"
export MY_CONTAINER_NAME="deal-viur"
export MY_CONTAINER_REGISTRY="eu.gcr.io"
export MY_CLUSTER_ZONE="europe-west3-a"
export MY_CLUSTER_NAME="deal"
export MY_DEPLOYMENT_NAME="deal-deployment"
export MY_PORT_INBOUND="8080"
export MY_PORT_OUTBOUND="8080"

/usr/bin/docker run --rm -p ${MY_PORT_INBOUND}:${MY_PORT_OUTBOUND} ${MY_CONTAINER_REGISTRY}/${MY_PROJECT_ID}/${MY_PROJECT_ID}:${MY_PROJECT_VERSION}

