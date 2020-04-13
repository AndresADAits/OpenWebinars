21.1 Referencias a métodos
Las referencias a métodos son una forma de hacer nuestro código aun más conciso:


public class Persona {
//…
 public static int
   compararPorEdad(Persona a, Persona b) {
      return a.fechaNacimiento
             .compareTo(b.fechaNacimiento);
 }
}

//...

List<Persona> personas = //...

// De menos a más "conciso"
personas.sort((Persona p1, Persona p2) -> {
   return p1.getFechaNacimiento()
      .compareTo(p2.getFechaNacimiento());
});

personas.sort((p1, p2) -> p1.getFechaNacimiento()
            .compareTo(p2.getFechaNacimiento()));

personas.sort(Persona::compararPorEdad);
21.2 Tipos de referencias a métodos
Clase::metodoEstatico: referencia a un método estático.
objeto::metodoInstancia: referencia a un método de instancia de un objeto concreto.
Tipo::nombreMetodo: referencia a un método de instancia de un objeto arbitrario de un tipo en particular.
Clase::new: referencia a un constructor.