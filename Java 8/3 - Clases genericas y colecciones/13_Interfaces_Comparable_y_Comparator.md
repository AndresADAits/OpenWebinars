13.1 Introducción
Muchas operaciones entre objetos nos obligan a compararlos: buscar, ordenar, … Si bien los tipos primitivos y algunas clases ya implementan su orden (natural, lexicográfico), para nuestras clases (modelo) tenemos que especificar el orden con el que las vamos a tratar.

13.2 Comparable
Comparable es un interfaz propuesto por Java, y su definición es sencilla:

public interface Compararable<T> {
     public int compareTo(T o);
}
Recibe un objeto del mismo tipo que la clase que lo implementa. El valor de retorno del método compareTo será:

0 si ambos objetos son iguales,
un valor negativo si el objeto es menor,
y uno positivo si es mayor.
Nos sirve para indicar el orden principal de una clase.

13.3 Comparator
Comparator también es un interfaz propuesto por Java, y su definición también es sencilla:

public interface Comparator<T> {
     public int compare(T o1, T o2);
}
Recibe dos argumentos, y su valor de retorno es análogo al de comparable.

Comparator nos servirá para indicar un orden diferente al orden natural definido con Comparable (no es necesario haber definido un orden con Comparable para poder utilizar Comparator, aunque sí es recomendable).