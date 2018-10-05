1. ¿Qué importancia tiene los tags en un proyecto?

 - Nos permite versionar nuestros commits.

2. ¿Cuál es la diferencia entre un tag normal y un tag anotado en git?

 - El tag normal es para un uso privado y temporal , mientras que el tag anotado está pensado para ser publicada.

3. ¿Cómo se sube todos los tags de git que hay en mi local?

 - Con el comando : 
 ```  
git push origin --tags
 ```
4. ¿Es necesario loguearse cada vez que subo una imagen a dockerhub?

 - No

5. ¿Qué es y para qué sirve docker?

 - Docker es un encapsulador de entornos y sirve para hacer nuestro desarrollo más fácil y sencillo mediante entornos.

6. ¿Cuál es la diferencia entre docker y VirtualBox?

 - Docker consume menos recursos que el virtualBox.

 - El tiempo de arranque y apagado de Docker es mucho más rápido que en el virtualBox.

  - El virtualBox necesita de un sistema operativo entero para funcionar.

7. ¿Es necesario depender de una imagen de docker base al crear una imagen nueva?

 - Sí.

8. ¿Por qué debo anteponer el nombre de usuario en una imagen docker nueva?

 - Para saber a que usuario de hub subiría.

9. ¿Qué pasa si creo una imagen sin especificar una versión o tag, con qué versión se crea?

 - Se tomas como si fuera la última versión(lastest).

 -- -
 # Segundo Taller : 

1.- ¿Porqué es necesario crear un contenedor con esta bandera -it ? ¿Qué pasa si no le pongo -it?
 - Porque nos habilita el modo interactivo y la consola TTY del contenedor(es necesario los dos). Si no le ponemos el flag -it se el container se ejecuta y muere.
2.- ¿Para qué sirve ejecutar el comando bash al ejecutar una imagen?
 - Para interactuar y ejecutar comandos de linux.

 3.-¿Cuál es la diferencia entre docker ps y docker ps -a?
 - Docker ps lista los contenedores que estan encendidos y docker ps -a lista todos los contenedores independientemente de si estén activos o no.
 
 ## PARTE 5 
 1. ¿Cuál es la diferencia entre una imagen y un contenedor?
  - La imagen es la base para construir un contenedor

2. ¿Cómo listo las imágenes que hay en mi computadora?
 - Docker images

3. ¿Cómo salgo de un contenedor de docker?
 - exit

4. ¿Se elimina el contenedor al salir de ella?
 - Sí
5. ¿Cómo elimino un contenedor?
 - docker kill + id del contenedor
6. ¿Para qué es necesario el flag `-i`, `-t`, `--rm`?
 - -i : Activar el modo interactivo-
 - -t : Para que se active la consola del contenedor.
 - --rm : Para eliminar el contenedor.

7. ¿Cómo verifico que el archivo creado se encuentra en la imagen?
 - Podría escribir en el docker file que se liste el archivo ó podría entrar al contenedor y ejecutar los comandos de linux.
8. ¿Cómo se comenta una linea de código en Dockerfile?
- El simbolo se comenta con "#" 

## PARTE 6

1. ¿Qué es NGINX?
 - Un servidor web
2. ¿Cómo expongo puertos en docker?
 - En el dockerfile tenemos que agregar "EXPOSE" seguido del numero de puesto.
3. ¿Cómo especifico los puertos al levantar un contenedor (docker run)?
 "<puerto a exponer>:<puerto del servicio>"
4. ¿Cómo hago 'forward' al levantar un contenedor (docker run)?
 - Con el flag "-p"