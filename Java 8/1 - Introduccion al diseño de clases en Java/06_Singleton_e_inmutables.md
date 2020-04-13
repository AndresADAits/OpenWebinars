6.1 Singleton
Singleton es uno de los patrones de diseño propuesto por Gang of Four (GOF), y sirve para poder tener una clase de la cual solamente querremos tener una instancia (manejadores, servicios, …).

Para implementarla, podemos seguir los siguientes pasos:

Definir un único constructor, como privado, para evitar instanciaciones innecesarias.
Obtener siempre la instancia a través de un método estático.
public class MiServicioSingleton {

    //Una instancia del objeto que va a existir
    private static MiServicioSingleton instance = null;

    //Evitamos así la instanciación directa
    private MiServicioSingleton() {    }

    public static MiServicioSingleton getInstance() {
        if (instance == null)
            instance = new MiServicioSingleton();

        return instance;
    }


}
6.2 Objetos inmutables
Son objetos cuyo estado no puede ser modificado una vez se haya inicializado. No son constantes ya que estas se definen en tiempo de compilación, y los inmutables en tiempo de ejecución. Un ejemplo de clase inmutable que ya hemos utilizado es String.

Algunas recomendaciones para crear objetos inmutables:

Definir todas las propiedades como final private
No añadir métodos setter
Evitar que existiendan la clase, añadiendole el modificador final a la definición.