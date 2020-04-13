8.1 Modificador final
Se puede utilizar en diferentes contextos:

Clases final
Métodos final
Variables final
En todos los casos, indica que de una u otra forma, el ámbito sobre el que aplica no podrá ser modificado.

8.2 Clases final
Son clases que no se pueden extender. En una jerarquía de herencia, son el último nodo. Se pueden instanciar y tratar con normalidad.

8.3 Métodos final
Se definen en clases susceptibles de ser extendidas. Nos permiten indicar que un método no se va a poder sobrescribir. En la clase extendida habrá que usar, obligatoriamente, la implementación de la clase base.

8.4 Variables final
Basicamente indican que aquella variable a la que afectan no se puede modificar. Podemos diferenciar entre:

Tipos primitivos: serán valores inmodificables, constantes. Suele usarse junto con static.
Objetos: si declaramos una referencia como final, estamos diciendo que esa referencia no podrá asignarse a otro objeto. Sin embargo sí que podemos modificar el estado del objeto con sus propios métodos. Lo mismo sucedería en el caso de arrays.