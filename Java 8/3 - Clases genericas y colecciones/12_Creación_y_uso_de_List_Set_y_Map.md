12.1 API de colecciones
Desde Java SE 2 se ofrece el tratamiento de colecciones. Actualmente tiene

Interfaces: tipos de datos
Implementaciones: concreciones de los diferentes interfaces.
Algoritmos: para realizar operaciones como ordenación, búsqueda, …
Actualmente, todas las colecciones están definidas como genéricas.

12.2 Tipos de colecciones
Java propone diferentes tipos de colecciones, a través de varias interfaces. Nosotros trabajaremos en esta lección con 3:

List: Se trata de una estructura lineal, con posibilidad de orden y de repetidos.
Set: es una colección que no soporta duplicados, y con posibilidad de orden.
Map: es una estructura de tipo clave, valor, con posibilidad de orden de los elementos (por la clave)
12.3 Intefaz List
Los elementos tienen siempre una posición, y permite duplicados. También permite búsqueda e iteraciones. Las implementaciones más conocidas son ArrayList y LinkedList. Si no sabemos cual escoger, utilizaremos siempre ArrayList.

Para construir una instacia, desde Java SE 7 podemos usar el operador diamond:

List<String> cars = new ArrayList<>();
12.4 Interfaz Set
Se trata de una colección que no puede contener repetidos. Java propone tres implementaciones: HashSet, TreeSet y LinkedHastSet:

HashSet es la más eficiente, pero no nos asegura nada sobre el orden.
TreeSet utiliza un árbol Red-Black, y ordena según el valor.
LinkedHashSet es un HashSet ordenado por orden de inserción.
12.5 Interfaz Map
No es un subtipo de Collection (List y Set sí que lo son). Cada elemento tiene estructura clave, valor. La clave sirve para acceder directamente al valor. Las implementaciones son HashMap, TreeMap y LinkedHashMap. Las consideraciones son análogas a Set.