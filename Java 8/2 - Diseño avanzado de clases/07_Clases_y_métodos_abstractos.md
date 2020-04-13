7.1 Abstract
Es una palabra reservada, que puede usarse a nivel de método o de clase. Sirve para indicar la obligación de implementar un método o de extender una clase completa.

7.2 A nivel de clase
Son clases que no se pueden instanciar. Puede tener métodos con implementación y atributos, y también métodos abstractos.

public abstract class ObjectoGrafico implements Transformable {

    protected int x, y;

    public void moverA(int nuevaX, int nuevaY) {
        this.x = nuevaX;
        this.y = nuevaY;
    }

    abstract public void dibujar();

    abstract public void cambiarTamanio(int factorAumento);

}
7.3 A nivel de método
Los métodos definidos como abstract deben estar en una clase abstracta. Definen la firma del método, pero sin implementación. Sus subclases se comprometen a implementarlo. Si no lo hacen, también deben ser abstractas. Pueden convivir con métodos normales.

7.4 Clases abstractas que implementan interfaces
Una clase que implementa una interfaz tiene obligación de implementar todos sus métodos. Sin embargo, una clase abstract puede dejar métodos sin implementación, obligando a quienes la extiendan a hacerlo.

public interface Transformable {

    public void rotar();
    public void voltearHorizontal();
    public void voltearVertical();
}

public abstract class ObjectoGrafico implements Transformable {

    protected int x, y;

    public void moverA(int nuevaX, int nuevaY) {
        this.x = nuevaX;
        this.y = nuevaY;
    }

    abstract public void dibujar();

    abstract public void cambiarTamanio(int factorAumento);

}