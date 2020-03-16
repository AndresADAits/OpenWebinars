#OPERADORES ARITMÉTICOS

#Poner espacio antes y después del operador

=begin
1.- SUMA
2.- RESTA   
3.- MULTIPLICACIÓN      
4.- DIVISIÓN
5.- MÓDULO
6.- POTENCIA
=end

a + b
a - b
a * b
a / b
a % b
a ** b

#OPERADORES DE COMPARACIÓN
=begin
1.- IGUALDAD    
2.- DESIGUALDAD
3.- MAYOR QUE
4.- MENOR QUE
5.- MAYOR/MENOR IGUAL QUE
=end

a == b
a != b
a > b
a < b
a >= b
  
#OPERADORES DE ASIGNACIÓN

=begin
1.- IGUAL
2.- MÁS IGUAL
3.- MENOS IGUAL
4.- POR IGUAL
5.- DIVIDE IGUAL
6.- MODULO IGUAL
7.- POTENCIA IGUAL
8.- ASIGNACION MÚLTIPLE
9.- ASIGNAR ARRAY EN MULTIPLE VARIABLES
=end

a = 1
a += 1
a -= 1
a *= 1
a /= 1
a %= 1
a **= 1

a, b, c = 10, 20 , 30

a, b, c = [10, 20, 30]

#OPERADORES LÓGICOS

=begin
and
or
not

por simbolo o por palabra en ingles
=end

&& == and
|| == or
! == not

#cambia precedencia

a = true and false

devuelve false, pero a devolveria true

a = true && false
devuelve false y a devuelve false tambien

#OPERADOR TERNARIO

#Realizar asignaciones por condiciones

value = age > 18 ? 20 : 10

Si la edad es mayor que 18, entonces es 20 y sino es 10

