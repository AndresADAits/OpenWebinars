#los symbols son inmutables, no se pueden manipular, 
#dos simbolos iguales, tendran punteros el mismo puntero de 
#memoria
#pasa lo mismo con los numeros
str_a="hello"
str_b="hello"
puts str_a.object_id == str_b.object_id
#esto dara falso

symbol_a = :hello
symbol_b = :hello
puts symbol_a.object_id == symbol_b.object_id
# respuesta true

#se definen como has visto iniciando con dos puntos
mi_symbol =:"symbol con espacios!"
#si quieres que tengas espacio hay que definirlo asi
#porque  si le metes espacio te dice que no encuenta final

puts mi_symbol
puts symbol_a

