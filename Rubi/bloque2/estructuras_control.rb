# EJEMPLO DE COMO ES LA ESTRUCTURA DE IF ELSEIF Y ELSE

if age > 18
    # comprar_alcohol
  elsif age < 5
    # zumo_gratis
  else
    # compar_zumo
  end

  # NEGANDO LA CONDICION PARA PASAR IF

  if !(age > 18)
    #prohibido
  end

  # HACIENDO LO MISMO SIN NEGAR LA CONDICION

  unless (age > 18)
    #prohibido
  end

  #  HACIENDO LO MISMO PERO EN UNA LINEA (los parentesis pueden ser opcionales)
  
  permiso if (age > 18)  # == prohibido if !(age > 18)
  
  permiso unless age < 18 # == prohibido unless age > 18


  # Ejecutar código en base a una condición con los bloques CASE:
  # Me recuerda a un switch

puts '¿Quiere salir del programa? ( si // no )'
answer = gets.chomp

case answer
when 'si', 'yes', 's', 'y'
  puts 'Hasta pronto!'
  exit
when 'no', 'n'
  puts 'A tope con ese sueño'
else
  puts 'Señor, no intente trolear por favor'
end


=begin
Repetición con bucles
¡El método loop ejecuta el bloque que le pasemos infinitas veces!
=end
loop { puts 'ira er nota!'} 

loop do
    puts 'looping forever!'
  end

# Puedes forzar la salida de un bucle/iterador con el método break:

n = 1

loop do
  n += 1
  break if n > 9
end

# El bloque se ejecutará hasta que n alcance el valor 10
#También puedes saltar a la próxima ejecución del bloque con el método next
n = 1

loop do
n += 1
next unless == 100
break
end

# WHILE

#Looping Condicional. con __while__ ejecutamos nuestro código hasta que la condición devuelva __true__:

n = 1
while n < 11 # Se ejecutará nuestro código hasta que n alcance el valor 11
  puts n
  n += 1
end 

#LO ANTERIOR EN UNA LINEA

n+= 1 while n < 11


# UNTIL
# Podemos utilizar until como while negado:

n = 1

until n >= 11
  puts n
  n += 1
end


# LOOP CON UN BLOQUE

def mi_blucle
    yield while true
end

mi_blucle { 'y otra vez!' }


# CON .TIMES

10.times do |x|
    puts x
end

# Con .times a un array
arr.length.times do
    # lo que quieras
end