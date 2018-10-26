.PHONY: docker

VOLUMEN_DOCKER = volumen_docker
NETWORK_NAME = red_docker

docker-workspace:
	echo "create docker worspace"
	docker rm ${VOLUMEN_DOCKER}
	docker create -v /app --name ${VOLUMEN_DOCKER} alpine
	docker cp ./ ${VOLUMEN_DOCKER}:/app

docker-install:
	docker run -t --rm --volumes-from ${VOLUMEN_DOCKER} -w /app ${DOCKER_IMAGE} npm install

docker-start:
	docker network rm ${NETWORK_NAME}
	docker network create ${NETWORK_NAME}
	docker run -t  --rm --net=${NETWORK_NAME} --name jenkins_name \
	-p "3030:1042" --volumes-from ${VOLUMEN_DOCKER} -w /app ${DOCKER_IMAGE} npm start

