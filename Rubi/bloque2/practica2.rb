puts 'Número de veces que quieres Iterar'

num = gets.to_i

while num > 0
    puts 'Iteración'

    num -= 1
end

=begin
Con metodo times

num.times {puts 'Iteración'}
=end