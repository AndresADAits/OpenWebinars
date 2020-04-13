4.1 Herencia de Object
Todo objeto, de forma directa o indirecta hereda de Object. Esta clase tiene una serie de métodos, entre los que destacan:

equals: nos permite indicar cuando dos objetos son iguales
hashCode: nos devuelve un número “único” asociado a una instancia de una clase
toString: nos devuelve una reperesentación del objeto como una cadena de caracteres.
4.2 Sobrescritura de equals
Con tipos primitivos, hemos usado el operador ==. ¿Qué sucede con los objetos? Primero tenemos que definir cuando dos instancias de un objeto son iguales o diferentes.

El método equals nos permite devolver un boolean indicando si un objeto es igual a otro. Nuestro IDE lo autogenera, junto con hashCode. La representación actual es muy verbosa y no aprovecha las capacidades de Java 7. La actualización está en desarrollo.

4.3 Sobrescritura de hashCode
Devuelve un número asociado a la clase. Sirve como posición de memoria en hexadecimal. Por definición, si dos objetos son iguales (equals), su hash code también debe serlo. Si sobrescribimos el método equals, también tenemos que sobrescribir hashCode para que se cumpla esa propiedad.

4.4 Sobrescritura de toString
Devuelve una representación en String del objeto. Por defecto, devuelve el tipo (la clase) y su hashCode. Lo podemos sobrescribir para que represente los valores. Dos objetos iguales deben tener la misma representación.