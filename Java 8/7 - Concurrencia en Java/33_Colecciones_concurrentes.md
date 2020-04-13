33.1 Problemas en colecciones de acceso concurrente
Las colecciones no están exentas de problemas de concurrencia. Uno de los problemas más clásicos es el conocido como productor- consumidor, donde tenemos una colección compartida de tamaño finito, y varios hilos que producen datos y otros hilos que consumen datos. Dados los problemas de condición de carrera, podemos tener que los consumidores pueden correr más que los productores, y dejar la colección vacía, o que los productores vayan más rápido que los consumidores, y la colección se llene. Necesitamos un mecanismo de espera y notificación.

33.2 wait y notify
Son método de la clase Object, disponibles en cualquier clase Java que implementemos. Nos permiten poner en espera a un hilo, hasta que se cumpla una determinada condición. Posteriormente, podemos notificarle que ya puede continuar con su ejecución, ya que la condición bloqueante ha dejado de cumplirse. Por ejemplo: si la colección se llena, los productores deben esperar a que los consumidores tomen elementos, para poder seguir produciendo.

public synchronized String take() {

   // Esperamos a que esté disponible
     while (empty) {
         try {
             wait();
         } catch (InterruptedException e) {}
     }
     // Modificamos el estado
     empty = true;
     // Notificamos al productor que el estado ha cambiado
     notifyAll();
     return message;
 }

 public synchronized void put(String message) {
     // Esperamos a que el mensaje haya sido leído
     while (!empty) {
         try {
             wait();
         } catch (InterruptedException e) {}
     }
     // Cambiamos el estado
     empty = false;
     // Almacenamos el mensaje
     this.message = message;

     // Notificamos al consumidor que el estado ha cambiado.
     notifyAll();
 }
33.3 Colecciones concurrentes
Nos evitan reinventar la rueda, programando soluciones como la del productor–consumidor. Existen diferentes tipos, entre los que están:

BlockingQueue: estructura FIFO que bloquea si la cola se queda llena o vacía.
ConcurrentMap: Map con operaciones atómicas.
ConcurrentNavigableMap: NaviagleMap con búsquedas aproximadas.
33.3.1 BlockingQueue
Se trata de una estructura FIFO: first-in-first-out (primero en entrar, primero en salir). conocida en castellano como cola. Java nos ofrece diferentes implementaciones:

ArrayBlockingQueue: debemos construirla con una capacidad inicial fija.
LinkedBlockingQueue: su capacidad inicial es Integer.MAX_VALUE (el mayor valor entero que podemos almacenar en un int).
PriorityBlockingQueue: permite ordenar los elementos según prioridad.
…