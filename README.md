El siguiente proyecto es para el Taller "Docker para Administradores/as de Sistemas y Desarrolladores/as" dicato en el CURZA con una modalidad presencial y virtual de 3 meses, con la entrega de un trabajo final integrador de todo lo aprendido en clase.
Dicho trabajo era para que cada uno adapte sus necesidades y cree una solución con docker.

Yo elegí un entorno de pruebas con docker-compose con varios contenedores, y uno de ellos usaba Kali linux para poder realizar Test de penetración, fallas, y todo tipo de ataque que se pueden encontrar dentro y fuera de la red.

Teniendo los siguientes contenedores:

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

Están todos para realizar sus respectivos tests.

Ahora bien, analizamos el por qué usar Docker y Kali juntos para realizar los test.
Primero tendríamos que hablar de virtualización, si bien virtualizar 3 o más VPS es caro y engorroso, es un desperdicio de recursos de CPU, RAM, SSD y Red. Con docker venimos a mejorar esa forma de virtualizar ya sea en Nivel 0 o Nivel 1 como más cómodo nos quede.
Con docker instalamos lo mínimo y necesario para ejecutar un contenedor adaptado y modificado solo a nuestras necesidades básicas y lo que buscamos tener en particular sin desperdiciar recursos.
Docker tiene la facilidad de construir y destruir a un nivel mucho más elevado pudiendo crear infraestructura sin limite(solo por hardware).
Se decidió en este caso contratar el servicio de DigitalOcean con un droplets básico de 1 Core-1 Gb Ram-25 Gb SSD con Ubuntu-Server 18.04 LTS donde se le instaló Docker Engine y Docker-Compose.
Luego se le cargó algunos scripts ya listos para que instalemos y actualicemos lo básico para tener compatibilidad y programas que necesitáramos.

