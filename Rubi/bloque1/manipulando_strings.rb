comilla_doble='String con comillas dobles'

puts comilla_doble

comilla_simple='String con comillas simples'

puts comilla_simple

numero=5

#interpolación 

interpolada="El numero de veces es #{numero}"

puts interpolada



#manipulación 

puts comilla_doble.upcase



puts comilla_simple.reverse



#metodós de consulta

nombre= 'Mi nombre es Andres'

puts nombre

puts nombre.include?('Andres')



puts nombre.start_with?('Mi')



puts nombre.size



puts ''.empty?



#comparar strings
puts "hello"=="HELLO"

a =  'hola'
b = a
puts a.equal?(b)

