32.1 Introducción
La extensión del texto de esta lección es algo más larga, intentando ofrecer un cierto soporte sobre la sincronización y sus causas. Java ofrece una serie de herramientas de sincronización; su buen uso depende de que el programador maneje conceptos sobre programación concurrente, algunos de los cuales escapan al alcance de este curso.

32.2 Interferencia entre hilos
Los hilos se comunican, principalmente, compartiendo el acceso a los atributos y los objetos a los que hacen referencia. Esta comunicación es extremadamente eficiente, pero hace posible dos tipos de errores: errores de interferencia entre hilos y errores de consistencia de memoria. La herramienta necesaria para evitar estos errores es la sincronización.

Supongamos la siguiente clase:

class Counter {
  private int c = 0;

  public void increment() {
    c++;
  }

  public void decrement() {
    c--;
  }

  public int value() {
    return c;
  }
}
Counter está diseñada para que cada invocación de increment se sume 1 a c, y con cada invocación de decrement se reste 1 de c. Sin embargo, si un objeto contador es referenciado desde varios hilos, la interferencia entre los hilos puede hacer que esto no suceda como se esperaba.

La interferencia ocurre cuando dos operaciones, que se ejecuta en diferentes hilos, pero que actúa sobre los mismos datos, se intercalan. Esto sucede porque las dos operaciones consisten en múltiples pasos, y las secuencias de pasos se superponen.

No parece posible que las operaciones en las instancias de Counter se intercalen, ya que ambas operaciones en c son, simples sentencias individuales. Sin embargo, incluso las sentencias simples pueden traducirse en múltiples pasos por la máquina virtual. No vamos a examinar los pasos específicos que la máquina virtual realiza -es suficiente para saber que la única expresión de c++ se puede descomponer en tres pasos:

Recuperar el valor actual de c.
Incrementar el valor recuperado por 1.
Guardar el nuevo valor incrementado en c.
La expresión de c— se puede descomponer de la misma manera, excepto que el segundo paso es un decremento en lugar de un incremento. Supongamos que un hilo A invoca increment más o menos al mismo tiempo que un hilo B invoca decrement. Si el valor inicial de c es 0, sus acciones intercaladas pueden seguir esta secuencia:

Hilo A: Recuperar c.
Hilo B: Recuperar c.
Hilo A: Incremento de valor recuperado; resultado es 1.
Hilo B: Disminuir el valor recuperado; resultado es -1.
Hilo A: Almacena el resultado en c, c es ahora 1.
Hilo B: Almacena el resultado en c, c es ahora -1.
El resultado del hilo A se pierde, sobrescrito por el hilo B. Esta secuencia de ejecución es solamente una de las múltiples posibilidades. En otras circunstancias podría ser el resultado del hilo B el que se perdiera, o podría no haber ningún error en absoluto. Debido a que son impredecibles, los errores de interferencia entre hilos pueden ser difíciles de detectar y corregir.

32.3 Código synchronized
El lenguaje de programación Java proporciona dos métodos básicos sincronización: métodos sincronizados y declaraciones sincronizadas. Para que un método sincronizado, sólo tiene que añadir la palabra clave synchronized a su declaración:

public class SyncCounter {
  private int c = 0;

  public synchronized void increment() {
      c++;
  }

  public synchronized void decrement() {
      c--;
  }

  public synchronized int value() {
    return c;
  }
}
Si count es una instancia de SyncCounter, el hacer estos métodos sincronizados tiene el efecto de que no es posible que dos invocaciones a métodos sincronizados sobre el mismo objeto se intercalen. Cuando un hilo está ejecutando un método sincronizado para un objeto, todos los demás hilos que invocan métodos sincronizados para el mismo objeto se bloquean (suspenden su ejecución), hasta que el primer hilo termina con el objeto.

32.4 Cerrojos y sincronización
La sincronización se construye alrededor de una entidad interna conocido como el cerrojo intrínseco o monitor de bloque. (La especificación de la API a menudo se refiere a esta entidad simplemente como un “monitor”).

Cada objeto tiene un cerrojo intrínseco asociado con él. Por convención, un hilo que tiene acceso exclusivo y constante a los campos de un objeto tiene que adquirir el cerrojo intrínseco del objeto antes de acceder a ellos, y luego liberarlo cuando termine con ellos. Un hilo se dice que es dueño del cerrojo intrínseco entre el tiempo que se haya adquirido el cerrojo y el que lo haya liberado. Mientras un hilo posee un cerrojo intrínseco, ningún otro hilo puede adquirir el mismo cerrojo. El otro hilo se bloquea cuando intenta adquirir el cerrojo.

32.5 Variables atómicas
El paquete java.util.concurrent.atomic define clases que soportan operaciones atómicas en variables simples. Todas las clases tienen los métodos get y set, que funcionan como lectores y escritores en variables volátiles.

Algunas de las clases más usuales son:

AtomicInteger
AtomicLong
AtomicBoolean
LongAdder
DoubleAdder