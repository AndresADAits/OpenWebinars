17.1 Métodos de búsqueda
Son un tipo de operaciones terminales sobre un stream, que nos permiten:

Identificar si hay elementos que cumplen una determinada condición
Obtener (si el stream contiene alguno) determinados elementos en particular.
Algunos de los métodos de búsqueda son:

allMatch(Predicate<T>): verifica si todos los elementos de un stream satisfacen un predicado.
anyMatch(Predicate<T>): verifica si algún elemento de un stream satisface un predicado.
noneMatch(Predicate<T>): opuesto de allMatch(…)
findAny(): devuelve en un Optional<T> un elemento (cualquiera) del stream. Recomendado en streams paralelos.
findFirst() devuelve en un Optional<T> el primer elemento del stream. NO RECOMENDADO en streams paralelos.