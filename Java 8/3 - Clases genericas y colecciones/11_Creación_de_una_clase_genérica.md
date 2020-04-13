11.1 Clases genéricas
Java permite desde sus orígenes usar clases genéricas, utilizando referencias de tipo Object. Sin embargo, estas pueden producir problemas en tiempo de ejecución.

public class Box {
     private Object object;

     public void set(Object object) {
          this.object = object;
     }

     public Object get() {
          return object;
     }
}
Desde Java SE 5, podemos crear clases cuyo tipo se indica en tiempo de compilación

public class Box<T> {
     private T object;

     public void set(T object) {
          this.object = object;
     }

     public T get() {
          return object;
     }
}
Podemos utilizar más de un tipo diferente a la vez:

public class Par<T, S> {
     private T obj1;
     private S obj2;

     //Resto de la clase

}
11.1.1 Nomenclatura con los tipos
E (element, elemento)
K (key, clave)
N (number, número)
T (type, tipo)
V (value, valor)
S, U, V, … (2º, 3º, 4º, … tipo)
11.2 Instanciación y operador diamond
Hasta Java SE 6, para instanciar un objeto genérico, tenemos que indicar los tipos dos veces.

Par<String, String> pareja2 = new Par<String, String>("Hola", "Mundo");
Desde Java SE 7, tenemos el operador <> diamond:

Par<String, String> pareja2 = new Par<>("Hola", "Mundo");
11.3 Clases genéricas con tipos cerrados
Podemos acotar el tipo parametrizado, para que sea uno en particular o sus derivados:

public class NumericBox<T extends Number> {

     private T object;

     //resto de la clase
}
Se puede indicar más de un tipo. Uno de ellos (y solo uno) se corresponderá con una clase; el resto deben ser interfaces. La clase a extender debe ser la primera de la lista:

public class A {
 //resto de la clase
}

public interface B {
 //resto de la interfaz
}

public class StrangeBox <T extends A & B> {

     //resto de la clase
}
11.4 Genéricos con tipos comodín
Los tipos comodín nos permiten relajar el tipo concreto de una clase genérica a un subtipo. Son muy útiles en el caso de trabajar con colecciones (las trataremos en los próximos capitulos).

public static double sumOfList(List<? extends Number> list) {
    double s = 0.0;
    for (Number n : list)
        s += n.doubleValue();
    return s;
}