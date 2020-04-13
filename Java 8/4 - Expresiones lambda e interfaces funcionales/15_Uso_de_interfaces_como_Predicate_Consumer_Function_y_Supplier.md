15.1 Predicate<T>
El método abstracto es:

boolean test(T t);
Comprueba si se cumple o no una condición. Se utiliza mucho junto a expresiones lambada a la hora de filtrar:

//...
    .filter((p) -> p.getEdad() >= 35l)
Se pueden componer predicados más complejos con sus métodos and, or y negate.

15.2 Consumer<T>
El método abstracto es:

void accept(T t);
Sirve para consumir objetos. Uno de los ejemplos más claros es imprimir.

//...
    .forEach(System.out::println)
Adicionalmente, tiene el método andThen, que permite componer consumidores, para encadenar una secuencia de operaciones.

15.3 Function<T, R>
El método abstracto es:

R apply(T t);
Sirve para aplicar una transformación a un objeto. El ejemplo más claro es el mapeo de objetos en otros.

//...
    .map((p) -> p.getNombre())
Adicionalmente, tiene otros métodos:

andThen, que permite componer funciones.
compose, que compone dos funciones, a la inversa de la anterior.
identity, una función que siempre devuelve el argumento que recibe
15.4 Supplier<T>
El método abstracto es:

T get();
Sirve para devolver un valor.

Tiene algunos interfaces especializados para tipos básicos:

IntSupplier
LongSupplier
DoubleSupplier
BooleanSupplier