31.1 Runnable
Es un interfaz que nos permite crear tareas para ser ejecutadas en hilos secundarios. Si nuestra clase ya hereda de otra, no puede heredar a la vez de Thread. Runnable nos permite solventar esa dificultad. Thread tiene un constructor que recibe como argumento un runnable.

Podemos utilizar las clases anónimas o las expresiones lambda para crear código más conciso:

//Este trozo de código puede ser muy común si
//el proceso de lanzamiento del hilo está dentro
//de un manejador de eventos, como el click de un
//botón.
new Thread(new Runnable() {
    @Override
    public void run() {
        System.out.println("Hello from Runnable+Thread!!");    
  }
}).start();

//Este código es como el anterior, pero aprovecha la potencia
//de las expresiones lambda.
new Thread(() -> System.out.print("Hello from Lambda Runnable+Thread")).start();
31.2 Callable<V> y Future<V>
Runnable no permite devolver ningún dato a otro hilo, salvo que utilicemos complejos mecanismos de sincronización programados por nosotros mismos. Para facilitar el trabajo, Java nos ofrece el interfaz Callable<V> que es, básicamente, un Runnable que devuelve un valor.

Para recoger el valor de un Callable, necesitamos un Future. Se trata de otra interfaz, que representa el resultado de una computación asíncrona. Nos permite operaciones como comprobar si la computación ha terminado, cancelarla, esperar a que termine, tomar el valor si ha terminado, … El método get nos permite obtener el valor de la ejecución de un Callable. Existen diversas formas de obtener un Future a partir de un Callable, pero siempre nos invita al uso de ejecutores.

31.3 Ejecutores y pools de hilos
Hasta ahora, el programador tenía que definir y lanzar los hilos de ejecución según su necesidad. Este esquema es válido para aplicaciones pequeñas. Para grandes aplicaciones, hay que separar la administración de los hilos del resto de la aplicación. Esto lo podemos realizar mediante ejecutores (Executors).

Java nos ofrece tres tipos de ejecutores (cada uno hereda del anterior)

Executor: soporta el lanzamiento de nuevas tareas, bajo demanda.
ExecutorService: añade a la anterior características que permiten administrar el ciclo de vida. Este será el más utilizado.
ScheduledExecutorService: añade a la anterior la posibilidad de ejecutar tareas periódicas.
La mejor forma de crear un ejecutor, es utilizando los métodos de los que nos provee Executors, a través de un pool de hilos. Este no será más que un conjunto de worker threads que estarán siempre dispuestos a ejecutar tareas de tipo Runnable o Callable.

Los pools pueden ser de tres tipos:

Single: Con un solo hilo de ejecución disponible. Si le pedimos (submit) más de una tarea a la vez, las pone en cola.
Fixed: Indicamos, en el momento de su creación, el número de hilos. Si dispone de n hilos, y enviamos n+1 tareas, las pone en cola.
Cached: Crea hilos conforme enviamos tareas. Reutiliza los hilos cuyas tareas han finalizado, para ejecutar tareas nuevas.