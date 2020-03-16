# codigo que esta entre un do y un end o entre llaves

# yield llama al bloque

 # metodo block_given? devuelve true o false

def block_test
  puts 'the method'

  # block_given devuelve true si se ha enviado un bloquee al método
  yield if block_given?

  puts 'the method again!'
end

# Ejecutamos el método pasando un bloque

block_test do
  puts 'the block!'
end

# También podemos ejecutarlo con {}:

block_test { puts 'the block with {}!' }
#Un método siempre puede recibir un bloque como último parámetro, podemos acceder a él definiendo el parámetro con el prefijo &:

def block_test(arg1, arg2, &block)
  # ...
  block.call if block_given?
  # ...
end

block_test(1, 2) { puts 'the block! con parametros dentro'}
#un bloque puede recibir parámetros

def block_test
  yield(1)
  yield(2)
  yield(3)
end

# El parámetro recibido se escribe entre || !

block_test do |i|
  puts i
end

block_test { |i| }

# Crear un objeto bloque con la clase Proc:

# Dos formas para hacerlo:
a = Proc.new { puts 'A con new! entre estos dos llama al de abajo' }
a = proc { puts 'A a con proc!' }

# Y lo ejecutamos cuando queramos!
a.call

# Los lambdas son similares a los procs
b = lambda { puts 'A! con lambda llama al de abajo entre los dos' }
b = -> { puts 'A! con signo lambda' }
b.call

