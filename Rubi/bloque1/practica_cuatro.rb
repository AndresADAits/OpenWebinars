
#%w nos sirve para crear un array que contenga todas las letras entre parentesis 
#.freeze sirve para congelarlo y que si se intenta modificar de un error
LETRAS = %w(T R W A G M Y F P D X B N J Z S Q V H L C K E).freeze

puts 'Por favor introduce tu numero de DNI sin letra'

num = gets.to_i

indice_letra = num % 23
letra = LETRAS[indice_letra]

puts " su DNI con letra de control es = #{num}#{letra}"
