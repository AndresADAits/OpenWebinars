=begin
Excepciones en Ruby
Una excepción es un tipo especial de objeto, una instancia de la clase Exception o de cualquiera de sus clases descendientes.
Lanzar una excepción implica detener la ejecución normal de nuestro programa.

1 / 0

# lanzará ZeroDivisionError por intentar realizar una división por 0
Estas son algunas excepciones de Ruby, y la forma de producirlas:

RuntimeError
raise

NoMethodError
Object.new.unknown_method!

NameError
a = wrong_name

IOError
STDIN.puts("Don't write here!")

Errno::error
File.open(-12)

TypeError
a = 3 + "can't add a string to a number!"

ArgumentError
def m(x); end; m(1,2,3,4)
Podemos rescatar excepciones utilizando las sentencia begin/rescue. Así, si se produce una excepción en el código bajo begin, el flujo de nuestro programa pasará al bloque rescue, en vez de producir la salida del programa.

puts 'enter a number'
number = gets.to_i

begin
  result = 10 / number
rescue
  puts "ERROR! Was your number zero?"
  exit
end

puts "10 / #{number} is #{result}"
Podemos lanzar excepciones con la sentencia raise

raise ArgumentError, 'mensaje de descripción de la excepción'
También podemos rescatar una excepción concreta, así como su mensaje de error:

begin
  # código
rescue ArgumentError => e
  # ¡solo se rescata una excepción de tipo ArgumentError!
  puts e
end
=end