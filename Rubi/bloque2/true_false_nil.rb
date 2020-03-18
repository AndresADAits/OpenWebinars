=begin
En ruby existen dos objetos boolean:

true, instancia de TrueClass
false, instancia de FalseClass
De esta forma, todos los objetos de ruby tienen un estado trueo un estado false.
Los objetos que tienen estado false son nil y false. El resto de objetos tienen un estado true.

Bajo esta premisa, es posible ejecutar código condicional utilizando los estados true/false de los objetos:

a = { a: 1, b: 2 }

if a[:c]
  # no se ejecutará porque a[:c] es nil
end
El objeto nil
En Ruby, el objeto nil, instancia de la clase nilClass representa el objeto nulo, la ausencia de objeto.
=end