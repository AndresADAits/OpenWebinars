#Sirven tanto para arrays como para hashs, que suelen ser llamados en bloques

#EACH PARA ARRAY

a = [1, 2, 3, 4]


# El método each recibe un bloque.
# El método ejecutará nuestro bloque enviando cada objeto de la colección. (4)

a.each do |element|
    puts element
end

#EACH PARA HASH

# También podemos iterar sobre las parejas de un hash:
b = { a: 1, b: 2, c: 2 }

b.each do |key, value|
  puts "#{key}, #{value}"
end

# MAP
# a.map  devuelve un nuevo objeto

a.map do |element|
     element - 1 # el return al ppio de la linea es opcional
end

#ahora al imprimirlo deberia ser 0,1,2,3


# a.map!  modifica el objeto

a.map! { |el| el + 1}

# modifica el objeto a  => 2,3,4,5




=begin

El método select, devuelve elementos que cumplen


a.select do |element|
    element > 2
end

[3, 4]

El método reject hace lo contrario, devuelve solo los que no cumplen

a.reject do |element|
    element > 2
end

[1, 2]

Este iterador, crea otro objeto, es una forma facil de crear 
un hash con un array

a.each_with_object

=end