print 'Por favor introduce un número:  =>  '

num = gets.to_i

puts 'El numero es par' if num.even?

n = 1

loop do
    puts "ira er nota #{n.to_i}"
    n += 1
    # si pongo aqui el puts n empieza en 2
  break if n > 9
end