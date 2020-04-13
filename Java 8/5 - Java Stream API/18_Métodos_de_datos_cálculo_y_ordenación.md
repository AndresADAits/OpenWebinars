18.1 Métodos de datos y cálculo
Los streams nos ofrecen varios tipos de métodos terminales para realizar operaciones y cálculos con los datos. Durante el curso trabajaremos con tres tipos:

Reducción y resumen (en esta lección)
Agrupamiento
Particionamiento
18.2 Métodos de reducción
Son métodos que reducen el stream hasta dejarlo en un solo valor.

reduce(BinaryOperator<T>):Optional<T> realiza la reducción del Stream usando una función asociativa. Devuevle un Optional
reduce(T, BinaryOperator<T>):T realiza la reducción usando un valor inicial y una función asociativa. Se devuelve un valor como resultado.
18.3 Métodos de resumen
Son métodos que resumen todos los elementos de un stream en uno solo:

count: devuelve el número de elementos del stream.
min(...), max(...): devuelven el máximo o mínimo (se puede utilizar un Comparator para modificar el orden natural).
18.4 Métodos de ordenación
Son operaciones intermedias, que devuelven un stream con sus elementos ordenados.

sorted() el stream se ordena según el orden natural.
sorted(Comparator<T>) el stream se ordena según el orden indicado por la instancia de Comparator.
Reproducción automatica
RESUMEN
CONTENIDOS 
NOTAS  
Introducción al diseño de clases en Java
 73m
100%
Diseño avanzado de clases
 43m
100%
Clases genéricas y colecciones
 37m
100%
Expresiones lambda e interfaces funcionales
 21m
100%
Java Stream API
 106m
62%
Introducción al API Stream
16:04 
Métodos de búsqueda de datos
6:27 
Métodos de datos, cálculo y ordenación
10:25 
Uso de Map y flapMap
12:04 
Uso de la clase Collector
19:28 
Uso de streams y filtros
8:27 
Referencias a métodos con stream
10:55 
Práctica: Todos los elementos del API stream trabajando conjuntamente
22:25 
Contenido adicional
 7
Java I/O y NIO.2
 105m
0%
Concurrencia en Java
 65m
0%
Bases de datos y Java
 66m
0%
Contenido extra
 https://github.com/OpenWebinarsNet/Curso-java-8-para-programadores-java