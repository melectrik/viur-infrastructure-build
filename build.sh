#!/bin/bash 

BASEDR=$(basedir ${0})
source ${BASEDR}/project-happydeal-viur.env

echo "Executing: " /usr/bin/docker build -t ${MY_CONTAINER_REGISTRY}/${MY_PROJECT_ID}/${MY_CONTAINER_NAME}:${MY_PROJECT_VERSION} .
/usr/bin/docker build -t ${MY_CONTAINER_REGISTRY}/${MY_PROJECT_ID}/${MY_CONTAINER_NAME}:${MY_PROJECT_VERSION} .

echo "Executing: " /usr/bin/docker build -t ${MY_CONTAINER_REGISTRY}/${MY_PROJECT_ID}/${MY_CONTAINER_NAME}:latest .
/usr/bin/docker build -t ${MY_CONTAINER_REGISTRY}/${MY_PROJECT_ID}/${MY_CONTAINER_NAME}:latest .

echo "Executing: " /usr/bin/docker push ${MY_CONTAINER_REGISTRY}/${MY_PROJECT_ID}/${MY_CONTAINER_NAME}:${MY_PROJECT_VERSION}
/usr/bin/docker push ${MY_CONTAINER_REGISTRY}/${MY_PROJECT_ID}/${MY_CONTAINER_NAME}:${MY_PROJECT_VERSION}

echo "Executing: " /usr/bin/docker push ${MY_CONTAINER_REGISTRY}/${MY_PROJECT_ID}/${MY_CONTAINER_NAME}:latest
/usr/bin/docker push ${MY_CONTAINER_REGISTRY}/${MY_PROJECT_ID}/${MY_CONTAINER_NAME}:latest

