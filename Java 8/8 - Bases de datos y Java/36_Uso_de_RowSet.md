36.1 Introducción
Un RowSet no es más que un objeto que nos permite manejar información tabular de forma mucho más rápida y eficiente que un ResultSet. Existen 5 tipos de referencias y 2 tipos:

CONECTADOS
JdbcRowSet
DESCONECTADOS
CachedRowSet
JoinRowSet
FilteredRowSet
WebRowSet.
36.2 ¿En qué se diferencian de un ResultSet?
Básicamente en que pueden funcionar como JavaBeans, y por ende, beneficiarse del mecanismo de notificación que tienen estos (sistema de eventos y manejadores de los mismos), así como del uso de properties.

Por otro lado, con los ResultSet podíamos tener la posibilidad de hacer scroll (libre, no solo hacia adelante) o utilizarlos en modo escritura, pero solo en algunos tipos de drivers. RowSet nos asegura el poder realizarlo con cualquier sistema gestor de bases de datos.

36.3 Creación de un RowSet
Hasta Java SE 6, teníamos diferentes mecanismos para realizarlos. Java SE 7 nos incorpora uno más limpio, utilizando una factoría.

RowSetFactory myRowSetFactory = null;
JdbcRowSet rowSet = null;

myRowSetFactory = RowSetProvider.newFactory();
rowSet = myRowSetFactory.createJdbcRowSet();
La factoría nos permite crear cualquiera de las 5 interfaces que ofrece JDBC.

36.4 JdbcRowSet
Este tipo de RowSet es el único que mantiene siempre la conexión de la base de datos abierta. Esto tiene como ventaja la velocidad e inmediatez de los cambios. Como desventaja, dicho esquema de trabajo suele ser muy costoso (hablando en términos de recursos, sobre todo en el servidor de bases de datos).

Nos permite realizar operaciones como recorrer los resultados, actualizarlos, insertar nuevos, borrar, …

//...

myRowSetFactory = RowSetProvider.newFactory();
rowSet = myRowSetFactory.createJdbcRowSet();

rowSet.setUrl(DBConnection.JDBC_URL);
rowSet.setUsername(DBConnection.USERNAME);
rowSet.setPassword(DBConnection.PASSWORD);

rowSet.setCommand("SELECT * FROM empleados");
rowSet.execute();

// Nos vamos al último registro de nuevo, y le subimos el sueldo un 10%
rowSet.last();
rowSet.updateFloat("sueldo", rowSet.getFloat("sueldo") * 1.1f);
rowSet.updateRow();

// Insertamos un nuevo registro
rowSet.moveToInsertRow();
rowSet.updateString("nombre", "Joaquín");
rowSet.updateString("apellidos", "Cañadas Casas");
rowSet.updateDate("fecha_nacimiento", Date.valueOf(LocalDate.of(1970, 5, 18)));
rowSet.updateFloat("sueldo", 1400.0f);
rowSet.insertRow();

//..
36.5 CachedRowSet
Se trata del interfaz base de todos los RowSet de tipo desconectado (FilteredRowSet, JoinRowSet y WebRowSet heredan de este interfaz). La principal diferencia es que solo abre la conexión para rellenar el RowSet de datos, y posteriormente, para enviar las modificaciones a la base de datos.

Al inicializarlo, tenemos que indicar que (índices de) columnas forman parte de la clave (primaria). Y para aceptar los cambios, necesitamos una conexión que tenga el modo auto-commit en false.