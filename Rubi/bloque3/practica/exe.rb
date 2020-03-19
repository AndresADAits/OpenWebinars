require_relative 'person'

OpenWebinars::Person

person = OpenWebinars::Person.new(name: 'Jose', surname: 'Fernandez', age: 50)

puts person.name

puts person.surname

puts person.age

puts person.full_name

puts person.initials

OpenWebinars::Dice

dice = OpenWebinars::Dice.new(6)

puts dice.sides

dice.sides = 5

puts dice.sides
puts 'Ahora que el dado tiene 5 caras vamos a tirar el dado a ver que sale'
puts dice.roll
puts dice.roll
puts dice.roll
puts dice.roll
puts dice.roll
puts dice.roll
puts dice.roll
puts dice.roll
puts dice.roll
puts dice.roll
puts dice.roll
