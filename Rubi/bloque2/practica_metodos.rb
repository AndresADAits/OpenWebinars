# PLANTILLA DE MÉTODOS

# MÉTODO max
# ENTRADA: Lista de números
# DEVUELVE: El número más grande
# IMPRIME: nada

def max(*nums)
    # metodo más simple=> nums.max

    result = nums.first
    nums.each do |num|
        result = num if num > result
    end
    return result
end

# MÉTODO longest_string
# ENTRADA: lista de string
# DEVUELVE: el string con más carácteres
# IMPRIME: nada

def longest_string(*strs)
   # metodo más simple=> strs.max

   result = strs.first
   strs.each do |str|
        result = str if str.length > result.length
    end
    return result
end

# MÉTODO word_count
# ENTRADA: string con varias palabras
# DEVUELVE: numero de palabras en el string
# IMPRIME: nada

def word_count(str)
str.split(' ').count
end

# MÉTODO sum
# ENTRADA: Lista de números
# DEVUELVE: Suma de todos los números
# IMPRIME: nada

def sum(*nums)
# método más facil=> nums.sum

result = 0

nums.each {|num| result += num}
return result
end

# MÉTODO mean
# ENTRADA: Lista de números
# DEVUELVE: La media aritmética de estos
# IMPRIME: nada

def mean(*nums)
return sum(*nums) / nums.count
    
end

# MÉTODO find_even
# ENTRADA: Lista de números
# DEVUELVE: Lista de números pares en esa lista
# IMPRIME: nada

def find_even(*nums)

    # primera forma=> nums.select {|num| num.even? }
    # segunda forma=> nums.select(&:even?)
=begin
#tercera forma=> (.push es sustituible por <<, y el return se puede borrar)
result = []
nums.each do |num|
    result.push num if num % 2 == 0
end
return result
=end
# cuarta forma con map
#el .compact elimina los nulos del array
nums.map { |num| num if num.even? }.compact
end

# TEST BÁSICOS DE LOS MÉTODOS ANTERIORES

def test(cases)
    puts cases.all? ? 'Todo ok!' : 'Error!'
end
exercise = ARGV.first.to_sym

puts "Bienvenido a #{exercise}, vamos a testear :"

case exercise
when :max
    test [max(3, 4, 2, 1) == 4, max(100, -5, 3, 75) == 100]
when :longest_string
    test [longest_string('aaaaa', 'aaa') == 'aaaaa']
when :word_count
    test [word_count('Bienvenido a este curso de Ruby') == 6]
when :sum
    test [sum(1, 3, 5) == 9, sum(10, 0) == 10, sum(-5, 0, 5) == 0]
when :mean
    test [mean(5, 5) == 5, mean(10, 2) == 6, mean(2, 2, 2) == 2]
when :find_even
    test [find_even(1, 2, 3, 4) == [2, 4],find_even(1, 3, 5) == [] ]
end