
# Métodos en Ruby
# los métodos o funciones se definen con las sentencias def/end:

def my_method
  # código del método por ejemplo
  puts 'imprimiendo con método'
end
# Y se ejecutan escribiendo el nombre del método:

my_method


# Los métodos pueden recibir parámetros. Además, la sentencia return es opcional, un método siempre devuelve el resultado de evaluar su última linea/bloque de código:

def add(num_a, num_b)
  return num_a + num_b
end

# return es opcional!

def add(num_a, num_b)
  num_a + num_b
end

# Ejecutamos el método enviandole los parámetros que espera recibir:

result = add(1, 2)

# los parentesis son opcionales en ruby

result = add 1,2

puts "1 + 2 = #{result}"


# Es posible asignar un valor por defecto a los parámetros de un método. De forma que no será obligatorio enviar ese parámetro:

def value(discount = 0)
  cost = 10 * (1 - discount)

 puts "#{cost} €"
end

value       # discount tomará el valor por defecto (0)
value(0.2)  # discount tomará el valor enviado (0.2)

# Recuerda, un método siempre espera recibir un bloque como último parámetro:

def foo(*args, &block)
  # hace lo que sea
end

#Además, el caracter * convierte los parámetros separados por , en un objeto array almacenado en la variable args.




#También podemos hacer la acción opuesta:

def sum(num_a, num_b)
  num_a + num_b
end

nums = [1, 2]

sum(*nums)
# Podemos anidar métodos, ya que la ejecución de un método evalua al objeto que éste devuelve:

puts "#{:my_symbol.to_s.upcase.split('_').push(1).join('-')}"
