14.1 Interfaces
Una interfaz es un contrato que compromete a la clase que lo implementa a dar cuerpo a una serie de métodos abstractos. Además, se pueden utilizar como referencias a la hora de crear objetos (que implementen esa interfaz, claro está):

List<String> lista = new ArrayList<>();
Desde Java SE 8, las interfaces pueden incluir la implementación de algunos métodos, en particular, los métodos anotados con default y static.

public interface Interfaz {

    public void metodo();

    default public void metodoPorDefecto() {
        System.out.println("Este es uno de los nuevos
                    métodos por defecto");
    }

    public static void metodoEstatico() {
        System.out.println("Método estático en
                        un interfaz");
    }

}
14.2 Interfaces funcionales
Una interfaz funcional será una interfaz que solamente tenga la definición de un método abstracto. Estrictamente hablando, puede tener varios métodos abstractos, siempre que todos menos uno sobrescriban a un método público de la clase Object. Además, pueden tener uno o varios métodos por defecto o estáticos.

Normalmente, son interfaces que implementamos mediante una clase anónima. Muchos de los interfaces que conocemos, como por ejemplo Comparator, son interfaces funcionales:

Collections.sort(lista, new Comparator<String>() {

    //Ordenamos la cadena por su longitud
    @Override
    public int compare(String str1, String str2) {
        return str1.length()-str2.length();
    }

});
Java SE 8 incorpora también la anotación @FunctionalInterface que permite al compilador comprobar si una interfaz cumple con las características de ser funcional o no (Eclipse nos proporciona dicha funcionalidad en directo, a la par de escribir el código).

Las interfaces funcionales y las expresiones lambda están áltamente ligadas, de forma que allá donde se espere una instancia de una clase que implemente una interfaz funcional, podremos utilizar una expresión lambda.

Collections.sort(lista, (str1, str2)-> str1.length()-str2.length());