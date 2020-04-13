34.1 Introducción
Java nos provee de soporte para conectar con bases de datos relacionales. Dicho soporte lo hace a través de la tecnología JDBC (Java DataBase Connectivity). Java SE 8 nos ofrece la versión 4.2 (JSR 211).

JDBC es un conjunto de interfaces, es decir, un contrato de nuestra forma de trabajar. Posteriomente necesitaremos un driver, es decir, un conjunto de clases que implementen esas interfaces, para darnos conexión con un sistema gestor de base de datos concreto.

34.2 Drivers
JDBC nos ofrece soporte para muchos SGBD comerciales a través de sus drivers. La lista completa la podemos encontrar en http://www.oracle.com/technetwork/java/index-136695.html. En estos capítulos nosotros trabajaremos con Mysql, cuyo driver lo podemos descargar en https://dev.mysql.com/downloads/connector/j/5.1.html .

34.3 Interfaces principales
Connection: es el que permite mantener la conexión con la base de datos.
Statement, PreparedStatement: nos permiten ejecutar consultas.
ResultSet: juego de resultados de una consulta ejecutada.
34.4 Conexión con la base de datos
JDBC nos ofrece dos posibilidades para conectar con una base de datos.

Usar la clase DriverManager, que nos permite conectar a través de una url jdbc, y soporta varias operaciones.
Usar el interfaz DataSource, que es más avanzado, y que permite ser transparente a nuestra aplicación. Es más complejo que DriverManager.
NUESTRA ELECCIÓN A lo largo de estos capitulos utilizaremos DriverManager. Aunque no es obligatorio, el uso de DataSource está orientado a proyectos Java EE. DriverManager será suficientemente potente para pequeños proyectos. Para otros más grandes, sería recomendable usar un sistema de persistencia como JPA.
34.4.1 URLs JDBC
Se trata de una cadena de texto con los datos de conexión a la base de datos. Dependerá del driver (base de datos) que vayamos a utilizar.

Por ejemplo, para conectar con Mysql, una URL tipo sería:

jdbc:mysql://hostname/database

34.4.2 Pasos para conectar, lanzar consultas y desconectar
Aunque las consultas las trabajaremos en profundidad en el siguiente capítulo, estos son los pasos tipo para conectar, lanzar consultas, procesar los resultados y desconectar.

Cargar el driver JDBC (< 4.0)
Establecer datos de conexión
Conectar obteniendo un objeto Connection.
Crear un objeto Statement y ejecutar consultas SQL
Los resultados se almacenan en un objeto ResultSet, donde se pueden consultar.
Cerrar los objetos (ResultSet, Statement y Connection).