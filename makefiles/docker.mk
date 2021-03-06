.PHONY: docker

VOLUMEN_DOCKER = volumen_docker_final
NETWORK_NAME = red_docker_final
JENKINS_NAME = jenkins_name_final

docker-workspace:
	echo "create docker worspace"
	#docker rm ${VOLUMEN_DOCKER}
	docker create -v /app --name ${VOLUMEN_DOCKER} alpine
	docker cp ./ ${VOLUMEN_DOCKER}:/app

docker-install:
	docker run -t --rm --volumes-from ${VOLUMEN_DOCKER} -w /app ${DOCKER_IMAGE} npm install

docker-start:
	#docker network rm ${NETWORK_NAME}
	docker network create ${NETWORK_NAME}
	#docker rm -f ${JENKINS_NAME}
	docker run -d --net=${NETWORK_NAME} --name ${JENKINS_NAME} \
	-p 3030:1042 --volumes-from ${VOLUMEN_DOCKER} -w /app ${DOCKER_IMAGE} npm start

