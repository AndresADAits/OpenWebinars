module OpenWebinars
    class Person
        attr_accessor :name, :surname, :age

        def initialize(name:, surname:, age:)
            # al poner los parámetros que recibo seguido de dos puntos
            # es para poder introducir estos parámetros en cualquier orden
        @name = name
        @surname = surname
        @age = age
        end
            def full_name
            "#{name} #{surname}"
        end

        def initials
            "#{name.byteslice(0)} #{surname.byteslice(0)}"
        end
    end

    class Dice
    attr_accessor :sides

        def initialize(sides)
            if !(sides.is_a?(Numeric)) || sides < 1
                raise ArgumentError, 'wrong number of sides'
            end
            @sides = sides
        end
        def roll
        rand(1..sides)
        end
    end
end


