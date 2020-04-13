3.1 Polimorfismo
Java nos permite crear instancias de objetos, pero que estos sean referenciados por alguna de sus clases ancestro o alguno de los interfaces que implementa:

Rectangulo r = new Cuadrado();
También permite la ocultación o sobreescritura de métodos por parte de las clases derivadas.

¿Qué sucede en caso de el uso de referencias de clase base, pero instanciación de objetos derivados? Java escoge, en tiempo de ejecución, el tipo de objeto. Si ese tipo ha ocultado un método de la superclase, llama a la concreción. En otro caso, llama al método de la clase base.

Cuadrado [lado=5.39897]
Area de un cuadrado
Perimetro de un cuadrado
Area de la figura: 10,797940 | Perímetro de la figura: 21,595881

Rectangulo [base=10.55045, altura=0.6183386]
Area de un rectángulo
Perímetro de un rectángulo
Area de la figura: 6,523750 | Perímetro de la figura: 22,337578
Esto también sucede cuando una clase implementa una interfaz que forma parte de una jerarquía de herencia:

ClaseQueImplementaInterfaz c1 = new ClaseQueImplementaInterfaz();
c1.saludar("Hola Mundo");

Hija c2 = new ClaseQueImplementaInterfaz();
c2.saludar("Hola Mundo, otra vez");

Base c3 = new ClaseQueImplementaInterfaz();
c3.saludar("Hola Mundo, por tercera vez");