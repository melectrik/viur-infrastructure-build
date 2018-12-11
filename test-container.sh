BASEDR=$(dirname ${0})
source ${BASEDR}/project-happydeal-viur.env

echo "Executing: " /usr/bin/docker run --rm -p ${MY_PORT_INTERNAL}:${MY_PORT_EXTERNAL} ${MY_CONTAINER_REGISTRY}/${MY_PROJECT_ID}/${MY_CONTAINER_NAME}:latest
/usr/bin/docker run --rm -p ${MY_PORT_INTERNAL}:${MY_PORT_EXTERNAL} ${MY_CONTAINER_REGISTRY}/${MY_PROJECT_ID}/${MY_CONTAINER_NAME}:latest
