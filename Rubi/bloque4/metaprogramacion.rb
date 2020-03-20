# Ruby Metaprogramación
# Ruby es flexible y dinámico. La metaprogramación consiste en utilizar código Ruby para alterar el propio código en tiempo de ejecución.
# Con técnicas de metaprogramación, es posible añadir métodos sobre un objeto:

# obj = Object.new

# def obj.color=(color)
#   @color = color
# end

# def obj.color
#   @color
# end

# obj.color = :red
# puts obj.color # :red

# Object.new.color # NoMethodError
# Utilizamos define_method(method_name) { |*args| ... } para definir métodos dinámicamente.

# Si definimos el método method_missing(name, *args, &block), éste se ejecutará si no existe un método en una objeto, en vez de lanzar NoMethodError.

# El método send("method_name", params) nos permite ejecutar un méotodo sobre un objeto dinámicamente.