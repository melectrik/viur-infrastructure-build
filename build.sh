#!/bin/bash 

export MY_PROJECT_ID="happydeal-viur"
export MY_PROJECT_VERSION="v3.0.3"
export MY_CONTAINER_NAME="deal-viur"
export MY_CONTAINER_REGISTRY="eu.gcr.io"
export MY_CLUSTER_ZONE="europe-west3-a"
export MY_CLUSTER_NAME="deal"
export MY_DEPLOYMENT_NAME="deal-deployment"

/usr/bin/docker build -t ${MY_CONTAINER_REGISTRY}/${MY_PROJECT_ID}/${MY_CONTAINER_NAME}:${MY_PROJECT_VERSION} .
/usr/bin/docker push ${MY_CONTAINER_REGISTRY}/${MY_PROJECT_ID}/${MY_CONTAINER_NAME}:${MY_PROJECT_VERSION}

