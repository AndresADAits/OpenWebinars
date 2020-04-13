30.1 Hilos con la clase Thread
Java tiene una clase, Thread, para poder crear y manejar hilos diferentes de ejecución al hilo principal.

Sus métodos básicos son:

public void run(): contiene el código que queremos ejecutar en el hilo. No se debe invocar nunca directamente.
public void start(): lanza la ejecución del hilo.
El resto de métodos los podemos consultar en la documentación del API. https://docs.oracle.com/javase/8/docs/api/java/lang/Thread.html

30.2 Creación de un Thread
Una primera forma de crear un hilo es extendiendo la clase Thread, y aportando el cuerpo del método run:

public class PrimoThread extends Thread {

    //propiedades y constructores

    @Override
    public void run() {
        long n = minimo;
        while(!testPrimalidad(n)) {
            System.out.printf("%d no es primo %n", n);
            ++n;
        }

        System.out.printf("El número primo es %d %n", n);
    }


    public static boolean testPrimalidad(long n) {

        //cuerpo del método
    }
}
Para ejecutarlo, tenemos que instanciar la clase, y usar el método start:

PrimoThread pt = new PrimoThread(135);
pt.start();
30.3 Ciclo de vida de un Thread
Ciclo de Vida

Se llama al constructor de Thread para crear el nuevo hilo.
Se llama al método start para designarlo como ejecutable
El planificador lo ejecuta en cuanto el procesador está disponible.
El hilo puede pasar a bloqueado por diferentes razones, y no vuelve hasta que pasa de nuevo a ejectuable.
Si se utiliza el método wait, se pone en estado de espera, y permanece ahí hasta que se ejecuta notify o notifyAll.
El hilo termina cuando finaliza la ejecución de su método run.
30.4 Pausar la ejecución de un Thread
Lo podemos hacer usando el método estático sleep. Recibe como argumento un número de milisegundos.

Thread.sleep(1000);