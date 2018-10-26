.PHONY: docker

VOLUMEN_DOCKER = volumen_docker

docker-workspace:
	echo "create docker worspace"
	#docker create -v /app --name ${VOLUMEN_DOCKER} alpine
	docker cp ./ ${VOLUMEN_DOCKER}:/app

docker-install:
	docker run -t --rm --volumes-from ${VOLUMEN_DOCKER} -w /app ${DOCKER_IMAGE} npm install
