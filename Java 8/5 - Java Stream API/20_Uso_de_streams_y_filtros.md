filter es una operación intermedia, que nos permite eliminar del stream aquellos elementos que no cumplen con una determinada condición, marcada por un Predicate<T>.

personas
            .stream()
            .filter(p -> p.getEdad() >= 18 && p.getEdad() <= 65)
            .forEach(persona -> System.out.printf("%s (%d años)%n", persona.getNombre(), persona.getEdad()));
Es muy combinable con algunos métodos como findAny o findFirst:

Persona p1 = personas
                        .stream()
                        .filter(p -> p.getNombre().equalsIgnoreCase("Andrés"))
                        .findAny()
                        .orElse(new Persona());
Y se puede usar también en streams sobre colecciones tipo Map.

Map<Integer, Persona> personas = new HashMap<>();
//Inicialización
personas.entrySet()
            .stream()
            .filter(map -> map.getKey() >= 5)
            .collect(Collectors.toMap(p -> p.getKey(), p -> p.getValue()))
            .forEach((key, value) -> System.out.printf("%d: %s%n", key, value.getNombre()));