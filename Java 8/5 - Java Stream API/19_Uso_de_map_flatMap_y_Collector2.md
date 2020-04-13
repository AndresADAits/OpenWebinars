19.3 Collectors
Los collectors nos van a permitir, en una operación terminal, construir una collección mutable, el resultado de las operaciones sobre un stream.

19.3.1 Colectores “básicos”
Nos permiten operaciones que recolectan todos los valores en uno solo. Se solapan con alguans operacinoes finales ya estudiadas, pero están presentes porque se pueden combinar con otros colectores más potentes.

counting: cuenta el número de elementos.
minBy(…), maxBy(…): obtiene el mínimo o máximo según un comparador.
summingInt, summingLong, summingDouble: la suma de los elementos (según el tipo).
averagingInt, averagingLong, averagingDouble: la media (según el tipo).
summarizingInt, summarizingLong, summarizingDouble: los valores anteriores, agrupados en un objeto (según el tipo).
joinning: unión de los elementos en una cadena.
19.3.2 Colectores “grouping by”
Hacen una función similar a la cláusula GROUP BY de SQL, permitiendo agrupar los elementos de un stream por uno o varios valores. Retornan un Map.

Map<String, List<Empleado>> porDepartamento =
   empleados
     .stream()
     .collect(groupingBy(Empleado::getDepartamento));
Se pueden usar en conjunción cno los colectores básicos, o con otro colector grouping by:

Map<String, Long> porDepartamentoCantidad =
   empleados
      .stream()
      .collect(groupingBy(Empleado::getDepartamento, counting()));

Map<String, Map<Double, List<Empleado>>> porDepartamentoYSalario =
   empleados
     .stream()
     .collect(groupingBy(Empleado::getDepartamento, groupingBy(Empleado::getSalario)));
También tenemos los colectores partitioning, que nos agrupan los resultados dos conjuntos, según si cumplen una condición:

Map<Boolean, List<Empleado>> salarioMayorOIgualque32000 =
   empleados
     .stream()
     .collect(partitioningBy(e -> e.getSalario() >= 32000));
19.3.3 Colectores “Collection”
Producen como resultado una colección: List, Set y Map.

Set<Empleado> setEmpleados = empleados.stream().collect(Collectors.toSet());
List<Empleado> listEmpleados = empleados.stream().collect(Collectors.toList());
Map<String, Double> mapEmpleados = empleados.stream().distinct()
                .collect(Collectors.toMap(Empleado::getNombre, Empleado::getSalario));