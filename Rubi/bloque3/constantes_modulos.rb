# CONSTANTE
A = "soy una constante"

class Foo
 A = "Soy una constante de la clase Foo"
end

#forma de llamar a constantes

A  #"soy una constante"

Foo::A #"Soy una constante de la clase Foo"

# MÓDULO

# Son espaciones de Nombre, Contenedores de métodos y son perfectos para reutilizar código.

# Crear un módulo:

module MyModule
    def module_method
             puts "module_method!"
    end


    class MyClass
    end
end

# INCLUIR MÉTODO CON INCLUDE

# Usar método: incluirlo en una clase, lo que se denomina mixin, y dota a esta clase de todos los metodos del módulo.
# al usar include los metodos del modulo, pasan a ser metodos de instancia de esta clase.
class A
    include MyModule
end

#y lo usamos asi:

a = A.new

a.module_method # lo que nos producira un puts "module_method!" 

# INCLUIR MÉTODO CON EXTEND

# todos los metodos del modulo serán metodos de clase, y no hay que instanciar
class A
    extend MyModule
end

A.module_method # lo que nos producira un puts "module_method!" 


# ACCEDER A UNA CLASE DEFINIDA EN UN MÓDULO

MyModule::MyClass