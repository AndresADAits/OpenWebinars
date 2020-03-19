# lo normal seria crear un fichero para las clases y otro para los modulos.
module Swimmable
    def swim
        puts 'Puedo nadar!'
    end
end
    
    module Walkable
        def walk
            puts 'Puedo andar!'
        end
    end
    
class Animal
end

class Fish < Animal
    include Swimmable
end

class Monkey < Animal
    include Walkable
    include Swimmable
end


doctor_zaius = Monkey.new
doctor_zaius.walk
doctor_zaius.swim