#COLECCIONES ORDENADAS ARRAY Y HASH
=begin
La diferncia de un hash con un array es que 
estos no tienen porque tener números en sus 
indices.

Ordenan los objetos en parejas, y recuerdan 
el orden en el que se añaden esta clave-valor

Se les conoce como diccionarios en otros lenguajes,
estan relacionado con JSON y se pueden convertir en Array
viceversa.
=end

#DECLARANDO UN ARRAY

Array.new()
[]
Array.new(3, 'hey!')
['hey!' ,'hey!', 'hey!']

#DECLARANDO HASH

a = { a: 1, b: 2}




#METODOS PARA INSERTAR Y BORRAR ELEMENTOS DE UN ARRAY
a = []
a.[]=(0,'first')
a[0] = "first"

a = [1, 2]
a[3] = 4

a = [1, 2, nil, 4]

#nil es null o asi


>> a = [1, 2, 3]
=> [1, 2, 3]
>> a.push(4)
=> [1, 2, 3, 4]
>> a.pop
=> 4
>> a
=> [1, 2, 3]
>> a.unshift(0)
=> [0, 1, 2, 3]
>> a.shift
=> 0
>> a
=> [1, 2, 3]


#COMBINANDO ARRAYS

a = [1, 2, 3]
a.concat([4,5,6])   # a ha sido modíficado!

b = a + [4, 5, 6]   # nuevo objeto!
b = .+([4, 5, 6])   # recuerda, + es un método

#OTROS METODOS

a.reverse #VUELTA
a.sort #ORDEN


a = [1, 2, [3, 4]]
a.flatten #[1, 2, 3, 4] nos devuelve otro objeto asi
si  quermos modificar a hacemos

a = a.flatten
o 
a.flatten! #modifica el objeto original directamente

a.join('-') #metodo comun para convertir array en string, separando cada elemento con -

a.uniq #elimina elementos repetiros

a.dup # duplica el objeto copiando el primero

#METODOS DE CONSULTA

a.size
a.empty?
a.include? b
a.count
a.first # te daria solo el primer elemento, a.first(4) los cuatro primeros
a.last

=begin
Hash

ejemplo

countries = {'Spain' => 'ES', 'France' => 'FR' }

Los objetos hash, al igual que los arrays, son colecciones de objetos. Un hash está formado por parejas de clave-valor que pueden ser cualquier objeto ruby.
Así podemos crear un nuevo hash:

# con el constructor de la clase Hash:
# el parámetro es el objeto que se devolverá si accedemos a una clave que no existe
a = Hash.new('default_value')

# operador {}
a = {}
# también completando el hash en su definición:
a = { a: 1, b: 2 }
También podemos acceder/modificar una pareja:

>> a = { a: 1, b: 2}
>> a[:a]
=> 1
>> a.[](:a) # es un método!
=> 1
>> a[:c] = 2
>> a[:c]
=> 2
=end
