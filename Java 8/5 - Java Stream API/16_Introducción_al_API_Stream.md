16.1 Introducción
El API Stream es una de las grandes novedades de Java SE 8, junto con las expresiones lambda. Permite realizar operaciones de filtro/mapeo/reducción sobre colecciones de datos, de forma secuencial o paralela.

Un Stream es una secuencia de elementos que soporta operaciones para procesarlos

Usando expresiones lambda
Permitiendo el encadenamiento de operaciones (para producir así un código que se lee mucho mejor y es más conciso)
De forma secuencial o paralela
En Java, los streams vienen definidos por el interfaz java.util.stream.Stream<T>.

16.2 Características de un Stream
Las operaciones intermedias retornan un Stream (permitiendo así el encadenamiento de llamadas a métodos).
Las operaciones intermedias se encolan, y son invocadas al invocar una operación terminal.
Solo se puede recorrer una vez; si lo intentamos recorrer una segunda vez, provocará una excepción.
Utiliza iteración interna en lugar de iteración externa; así nos centramos en qué hacer con los datos, no en como recorrerlos.
16.3 Algunos subtipos de streams
En el caso de que vayamos a utilizar un stream de tipos básicos (int, long y double), Java nos proporciona las interfaces IntStream, LongStream y DoubleStream.

16.4 Formas de obtener un stream
Stream.of(...): retorna un stream secuencial y ordenado de los parámetros que se le pasan.
Arrays.streams(T[] t): retorna un stream secuencial a partir del array proporcionado. Si el array es de tipo básico, se retorna un subtipo de Stream.
Stream.empty(): retorna un stream vacío.
Stream.iterate(T, UnaryOperator<T>): devuelve un stream infinito, ordenado y secuencial. Lo hace a partir de un valor y de aplicar una función a ese valor. Se puede limitar el tamaño con limit(long).
Collection.stream() y Collection.parallelStream(): devuelve un stream (secuencial o paralelo) a partir de una colección.
Collection.generate: retorna un stream infinito, secuencial y no ordenado a partir de una instancia de Supplier (o su correspondiente expresión lambda).
16.5 Operaciones intermedias
Son operaciones que devuelven un Stream, y por tanto, permiten encadenar llamadas a métodos. Sirven, entre otras funcionalidades, para filtrar y transformar los datos.

16.5.1 Operaciones de filtrado
filter(Predicate<T>): nos permite filtrar usando una condición.
limit(n): nos permite obtener los n primeros elementos.
skip(m): nos permite obviar los m primeros elementos.
16.5.2 Operaciones de mapeo
map(Function<T,R>): nos permite transformar los valores de un stream a través de una expresión lambda o una instancia de Function.
mapToInt(...), mapToDouble(...) y mapToLong(...) nos permite transformar a tipos básicos, obteniendo IntStream, DoubleStream o LongStream, respectivamente.
16.6 Operaciones terminales
Provocan que se ejecuten todas las operaciones intermedias. Las hay de varios tipos:

Para consumir los elementos (por ejemplo, forEach)
Para obtener datos de un stram (agregación)
Para recolectar los elementos y transformarlos en otro objeto, como una colección.