puts 'Bienvenido al ejercicio Dos '
print 'Por favor introduzca un numero de 4 digitos =>'

number = gets.to_i

millares = number / 1000
centenas = number % 1000 / 100
decenas = number % 1000 % 100 / 10
unidades = number % 1000 % 100 % 10

puts "Unidades de Millar: #{millares}"
puts "Centenas: #{centenas}"
puts "Decenas: #{decenas}"
puts "Unidades: #{unidades}"