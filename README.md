El siguiente proyecto es para el Taller "Docker para Administradores/as de Sistemas y Desarrolladores/as"
dicato en el CURZA con una modalidad presencial y virtual de 3 meses, con la entrega de un trabajo final integrador de
todo lo aprendido en clase.
Dicho trabajo era para que cada uno adapte sus necesidades y cree una solucion con docker.

Yo elegi un entorno de pruebas con docker-compose con varios contenedores, y uno de ellos usaba Kali linux para poder realizar
Test de penetracion, fallas, y todo tipo de ataque que se pueden encontrar dentro y fuera de la red.

Teniendo los sigueites contenedores:

1)
V.3
nextcloud
mariadb
adminer
[Online]
2)
V.3
Kalilinux
[Live]
3)
V.3
HAproxy
[OffLine]
4)
V.3
wordpress
mysql:8.0
adminer
[OffLine]

Estan todos para realizar sus respectivos tests.

Ahora bien analizamos el por que usar Docker y Kali juntos para realizar los test.
Primero tendriamos que hablar de virtualizacion, si bien virtualizar 3 o mas VPS es caro y engorroso
es un desperdicio de recursos de CPU, RAM, SSD y Red. Con docker venimos a mejorar esa forma de virtualizar
ya sea en Nivel 0 o Nivel 1 como mas comodo nos quede.
Con docker instalamos los minimo y necesario para ejecutar un contenedor adaptado y modificado solo a nuestras necesidades basicas y lo que buscamos tener en particular sin desperdiciar recursos.
Docker tiene la facilidad de construir y destruir a un nivel mucho mas elevado pudiendo crear infraestructura sin limite(solo por hardware).
Se decidio en este caso contratar el servicio de DigitalOcean con un dopplet basico de
1 Core-1 Gb Ram-25 Gb SSD con Ubuntu-Server 18.04 LTS donde se le instalo Docker Engine y Docker-Compose.
Luego se le cargo algunos scripts ya listos para que instalemos y actualicemos lo basico para tener compativilidad y programas que necesitamos.
