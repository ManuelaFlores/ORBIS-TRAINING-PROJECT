 ## **Para construir la imagen indicando el nombre de la imagen y la versión:**
 ```
docker build -t manuelaflores16/orbis-training-docker:0.1.0 .
```

## **Para subir la imagen a dockerhub**
```
docker push manuelaflores16/orbis-training-docker:0.1.0 
```

## **Para cambiar el tag :**
``` 
docker tag 2ed242f0459b manuelaflores16/orbis-training-docker:0.2.0  
```

## **Para exponer el contenedor a travéz del puerto 1080**

```
docker run -p "1080:80" manuelaflores16/orbis-training-docker:3.0.0
```
## **Para construir la imagen basada en un archivo docker-compose**

````
docker-compose build
````

## **Para levantar el contenedor basado en un archivo docker-compose**

````
docker-compose up
````

## Para llevar el contenido de mi proyecto al container

 ````
 docker run -it -v $PWD:/app manuelaflores16/orbis-training-docker:4.0.0 sh -c "npm install && ls"
````


