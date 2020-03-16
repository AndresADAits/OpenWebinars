PAISES = ['españa', 'francia', 'alemania', 'inglaterra']
puts 'Bienvenido a la practica 3'
puts 'Por favor escoge un numero para imprimir su nombre del reves'
puts '1 - españa'
puts '2 - francia'
puts '3 - alemania'
puts '4 - inglaterra'

country = gets.to_i

puts PAISES[country -1].reverse




