26.1 Introducción
Un path o ruta es una forma de identificar (y acceder) un fichero o un directorio dentro del sistema de ficheros.

Decimos que una ruta es absoluta cuando contiene el elemento raíz y la lista de directorios completa para localizar el fichero. Por contrario, decimos que es relativa cuando necesita ser combinada para acceder al fichero o directorio.

26.2 Clase Path
Se introdujo en Java SE 7, como parate de Java NIO.2. Representa una ruta en el sistema de ficheros, y permite manejar diferentes sistemas de ficheros (Windows, Linux, Mac, …). Contiene el nombre del fichero, así coo la lista de directorios usada para construir la ruta.