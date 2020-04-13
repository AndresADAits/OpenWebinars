19.1 Uso de map
map es una de las operaciones intermedias más usadas, ya que permite la transformación de un objeto en otro, a través de un Function<T, R>. Se invoca sobre un Stream<T> y retorna un Stream<R>. Además, es muy habitual realizar transformaciones sucesivas.

lista
   .stream()
   .map(Persona::getNombre)
   .map(String::toUpperCase)
   .forEach(System.out::println);
19.2 Uso de flatMap
Los streams sobre colecciones de un nivel permiten transformaciones a través de map pero, ¿qué sucede si tenemos una colección de dos niveles (o una dentro de objetos de otro tipo)?:

public class Persona {

    private String nombre;
    private List<Viaje> viajes = new ArrayList<>();

  //resto de atributos y métodos
}
Para poder trabajar con la colección interna, necesitamos un método que nos unifique un Stream<Stream<T>> en un solo Stream<T>. Ese es el cometido de flatMap.

lista
   .stream()
   .map((Persona p) -> p.getViajes())
   .flatMap(viajes -> viajes.stream())
   .map((Viaje v) -> v.getPais())
   .forEach(System.out::println);
También tenemos disponibles las versiones primitivas flatMapToInt, flatMapToLong y flatMapToDouble:

Arrays
    .stream(numeros)
    .flatMapToInt(x -> Arrays.stream(x))
    .map(IntUnaryOperator.identity())
    .distinct()
    .forEach(System.out::println);