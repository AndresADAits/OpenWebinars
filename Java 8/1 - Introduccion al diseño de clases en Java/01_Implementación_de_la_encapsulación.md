1.1 Encapsulación
Los objetos conocen solamente su estructura, no la de los demás. El trato entre objetos se realiza a través de los métodos. Normalmente, los atributos de un objeto se deben consultar o editar a través de métodos.

1.2 Buenas prácticas.
1.2.1 Para clases
La mayoría de las clases que se crean son públicas.
Cada fichero .java tendrá solamente una clase pública, con el mismo nombre del fichero.
1.2.2 Para atributos
La mayoría de los atributos de una clase serán privados.
Solamente algunas constantes, o casos muy particulares, tendrán otra modificador de acceso.
1.2.3 Para métodos
Si una clase tiene atributos, seguramente tenga métodos públicos.
Los métodos privados son interesantes para cálculos auxiliares o parciales (solo se pueden invocar desde la propia clase).
1.3 Tipos de clases
Aunque Java tiene solamente una forma de crear clases, los patrones de diseño nos dicen que podemos encontrar diferentes tipos de clases según su cometido:

Modelo: representan objetos o hechos de la naturaleza: un coche, un asiento contable, los datos meteorológicos de un día. Suelen tener atributos, getters y setters, equals, hashCode, toString, …
Servicios: implementan la lógica de negocio. Suelen tener algunos atributos, pero sobre todo métodos públicos y privados.
Auxiliares: sirven para realizar operaciones auxiliares de cálculo o transformación de datos. Mayoritariamente, sus métodos son estáticos.
Main: son el punto de entrada de la aplicación. La mayoría de las ocasiones, solo tienen este método, y si tienen más, suelen ser estáticos.
Test: clases orientadas a realizar pruebas de nuestra aplicación. En Java, suelen ser test unitarios con JUnit.
…