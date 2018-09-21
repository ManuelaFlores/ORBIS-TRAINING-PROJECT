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