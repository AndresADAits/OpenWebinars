9.1 Clases dentro de otras clases
Java permite definir clases dentro de otras clases. A estas clases se le llaman anidadas. Pueden ser de dos tipos, estáticas o no estáticas. No se trata de composición de clases, sino anidamiento. En algunos casos, pueden acceder a los atributos de la clase que le envuelve.

Las razones para su uso son varias:

Agrupamiento lógico de clases que se utilizan en un solo lugar. Por tanto hay mayor cohesión.
Aumento de la encapsulación.
Código más legible y fácil de mantener.
9.2 Clases internas
Se llaman así a las clases anidadas no estáticas. Solo pueden existir en el marco de una instancia de la clase externa. Pueden acceder a sus miembros (de la clase externa).

Si definimos una variable miembro en la clase interna, con el mismo nombre otra de la clase externa, la interna oculta a la externa. A esto se le llama shadowing

9.3 Clases locales
Son clases que se definen dentro de un bloque, normalmente el cuerpo de un método. Sirven para afinar aun más la cohesión del código.

9.4 Clases anónimas
Permiten definir e instanciar una clase a la vez. Son como clases locales sin nombre. Sirven para ser usadas una vez.

Las podemos definir a partir de otra clase o de una interfaz. Podemos crearlas en el cuerpo de un método, de una clase, o como argumento de un método.