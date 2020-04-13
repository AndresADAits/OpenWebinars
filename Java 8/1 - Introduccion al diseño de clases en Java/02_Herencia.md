2.1 Herencia de clases
Una clase que extiende a otra hereda sus atributos y sus métodos (no constructores). Puede añadir atributos y métodos nuevos. Se trata de una asociación es-un, ya que la clase Hija es-un(a) (sub)tipo de la clase Base. Por ejemplo un Coche es-un Vehiculo, o un Leon es-un Animal.

Si usamos protected en la clase base, tendremos acceso directo a los atributos. En otro caso, tendremos que acceder vía getters/setters. ¡OJO! Los constructores no se heredan aunque sean públicos.

public class Base {

    private String nombre;
    protected String apellidos;

    //...
}

public class Hija extends Base {

  public void metodo() {
          //this.nombre = "Pepe";  //Imposible acceder. Nos da error
          this.setNombre("Pepe"); //Funciona perfectamente
          this.apellidos = "Perez";
      }

      //...
}
2.2 Herencia de interfaces
También podemos establecer relaciones jerárquicas entre interfaces. Nos regimos por las mismas reglas que en el caso de las clases.

2.3 Asociación de composición
Normalmente, cuando representamos la estructura de un sistema, está formado por muchas clases. En este caso, no solamente importan las clases en sí, sino las asociaciones. Una de ellas es la composición. En UML, se representan de una forma especial.

Diagrama de clases

Dentro de la clase Todo tendremos una referencia a la clase Parte. También es posible que la multiplicidad nos indique que debemos tener una colección (Provincia y Municipio). Normalmente hay dependencia de existencia entre la parte y el todo.