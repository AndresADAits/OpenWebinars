23.1 Flujos
Son un canal de comunicación de las operaciones de entrada salida. Este esquema nos da independencia para poder trabajar igual tanto si estamos escribiendo en un fichero, como en consola, o si estamos leyendo de teclado, o de una conexión de red.

23.2 Tipos de Flujos
Dependiendo de su destino, tenemos:

Flujos de entrada: sirven para introducir datos en la aplicación.
Flujos de salida: sirven para sacar datos de la aplicación.
Dependiendo del contenido del flujo:

Flujos de bytes: manejan datos en crudo.
Flujos de caracteres: manejan caracteres o cadenas.
23.3 Flujos de salida
23.3.1 Patrón básico de los flujos de salida
Abrir el flujo
Mientras hay datos que escribir
  Escribir datos en el flujo
Cerrar el flujo
23.3.2 Flujos de salida de bytes
Algunas de las clases que podemos usar son:

OutputStream: clase abstracta, padre de la mayoría de los flujos de bytes.
FileOutputStream: flujo que permite escribir en un fichero, byte a byte.
BufferedOutputStream: flujo que permite escribir grupos (buffers) de bytes.
ByteArrayOutputStream: flujo que permite escribir en memoria, obteniendo lo escrito en un array de bytes.
23.3.3 Flujos hacia otros flujos
Solo FileOutputStream tiene un constructor que acepta una ruta (entre otras opciones). El resto reciben en sus constructores un tipo de OutputStream. ¿Por qué? Porque podemos construir flujos que escriben en flujos (encadenados).

BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream("fichero.dat"));
23.3.4 Flujos de salida de caracteres
Writer: clase abstracta, padre de la mayoría de los flujos de caracteres.
FileWriter: flujo que permite escribir en un fichero, caracter a caracter.
BufferedWriter: flujo que permite escribir líneas de texto.
StringWriter: flujo que permite escribir en memoria, obteniendo lo escrito en un String
OutputStreamWriter: flujo que permite transformar un OutputStream en un Writer.
PrintWriter: flujo que permite escribir tipos básicos Java.
