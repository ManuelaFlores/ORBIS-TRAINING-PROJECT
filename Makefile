include makefiles/task.mk 

## DEPLOY ##

NAME_IMAGE = manuelaflores16/orbis-training-docker
DOCKER_TAG = 4.0.0
DOCKER_IMAGE = ${NAME_IMAGE}:${DOCKER_TAG}
NAME = "Manuela"

install:
	docker run -it -v ${PWD}:/app ${DOCKER_IMAGE} npm install

start:
	docker run -it -v ${PWD}:/app -p "3030:1042" ${DOCKER_IMAGE} npm start   

release:
	docker run -it -v ${PWD}:/app -p "3030:1042" ${DOCKER_IMAGE} npm run release 

greet:
	docker run --entrypoint=/app/resources/example.sh -it -v ${PWD}:/app -e NAME=${NAME} ${DOCKER_IMAGE}

recursos:
	echo 'hola recursos!'

test: 
	echo ${DOCKER_IMAGE}
