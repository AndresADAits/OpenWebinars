24.1 Patrón básico de los flujos de entrada
Abrir el flujo
Mientras hay datos que leer
  Leer datos del flujo
  Procesar los datos
Cerrar el flujo
24.2 Flujos de entrada de bytes
Algunas de las clases que podemos usar son:

InputStream: clase abstracta, padre de la mayoría de los flujos de bytes.
FileInputStream: flujo que permite leer de un fichero, byte a byte.
BufferedInputStream: flujo que permite leer grupos (buffers) de bytes.
ByteArrayInputStream: flujo que permite leer de memoria (de un array de bytes).
24.3 Flujos de entrada de caracteres
Algunas de las clases que podemos usar son:

Reader: clase abstracta, padre de la mayoría de los flujos de caracteres.
FileReader: flujo que permite leer de un fichero, caracter a caracter.
BufferedReader: flujo que permite leer líneas de texto.
StringReader: flujo que permite leer desde la memoria.
InputStreamReader: flujo que permite transformar un InputStream en un Reader.