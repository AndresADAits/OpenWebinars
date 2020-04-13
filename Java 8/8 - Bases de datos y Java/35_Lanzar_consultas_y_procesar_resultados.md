35.1 Introducción
JDBC nos provee de varios objetos para lanzar consultas, y uno para poder procesar los resultados.

Statement: nos permite lanzar consultas y recoger el resultado. Es la forma más básica de realizarlo.
PreparedStatement: permite lanzar consultas a las que podemos asignarle los valores de los parámetros mediante métodos convenientes.
CallableStatement: nos permite lanzar la ejecución de procedimientos almacenados y recoger sus resultados.
ResultSet: es la clase que nos permite recoger el resultado de la ejecución de una consulta realizada con alguno de los interfaces anteriores.
35.2 Statement
Nos provee de método para ejecutar consultas en una base de datos relacional. Recibe la consulta como un String, y devuelve (generalmente) un objeto de tipo ResultSet.

Tiene, entre otros, 3 métodos para ejecutar consultas:

execute: permite obtener más de un ResultSet
executeQuery: permite obtener un ResultSet
executeUpdate: Devuelve un entero que representa el número de filas afectadas. Se usa con consultas INSERT, UPDATE o DELETE
35.3 ResultSet
Se trata del objeto que nos permite recoger los resultados de una consulta SELECT. Tiene la estructura de un cursor, es decir, un juego de resultados y un puntero que nos permite navegar resultado resultado. Además, nos provee de métodos getXXX, por cada tipo de dato que podemos rescatar. Hay dos implementaciones por cada tipo de dato, una que recibe el índica de la columna, y otra que recibe el nombre.

Para recorrerlo de forma completa, lo normal suele ser utilizar el método next() con la siguiente estructura:

while (rs.next()) {
   String coffeeName = rs.getString(1);
   int supplierID = rs.getInt(2);
   float price = rs.getFloat(3);
   int sales = rs.getInt(4);
   int total = rs.getInt(5);
   //…
}
Tiene otros métodos para navegar. Además, en algunos casos (depende de la implementación del driver), tiene la posibilidad de trabajar en modo escritura, si bien no lo recomendamos desde aquí, ya que es preferible trabajar con otros esquemas, como el uso de PreparedStatement y el patrón de diseño DAO.

35.4 PreparedStatement
Se trata de una extensión de Statement que nos permite asignar los tipos de dato de los parámetros y sus valores, de forma conveniente.

Con un Statement, si quisiéramos buscar a todos los empleados con un sueldo mayor a un valor, tendríamos que hacerlo así:

float valor = 1235.34f;
String sql = "SELECT * FROM empleados WHERE SUELDO >= " + valor;
Frente a este esquema, que puede suponer problemas, PreparedStatement nos permite indicar, allí donde vamos a insertar un valor, indicar un interrogante, y darle valor después:

float valor = 1235.34f;
String sql = "SELECT * FROM empleados WHERE SUELDO >= ?";
PreparedStatement ps = conn.prepareStatement(sql);
ps.setFloat(1, valor);