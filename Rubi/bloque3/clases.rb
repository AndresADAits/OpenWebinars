=begin
  # CLASES EN RUBY
  

  class Person
  def initialize (name, surname)
    @name = name
    @surname
   end
   def full_name
    "{@name}#{@surname}"
  end
  
  # def initialize es el constructor, es el método que se ejecuta cuando usamos el .new
  # puede recibir parametros.
  # @name es una variable de instancia, son visibles en todo el ambito de la clase.
  #  cada objeto tiene valores diferente para la clase.

  # def full_name es un método de la clase Person que devuelve el nombre completo 
  # aplicando interpolación
  person = Person.new ('Juan','ymedio') 
  
  # person instancia a la clase Persona. (crea una nueva persona) 
  # .new llama al constructor de la clase Persona (asigna los atributos de la clase)
  # enviamos dos parametros y el constructor crea dos nuevas variables de instancia





 # GETTER Y SETTER

# utilizamos la sentencia class
class Person < Animal
  # Define name, name=() para la clase Person, métodos getter y setter
  attr_accessor :name, :age 


  luego al hacer person.name = `Jose` accedemos al setter y lo añadimos

  si hago person.name accedemos al getter y nos devuelve 'Jose'


  # También es posible definir solo el setter name=(new_name)
  attr_writer :name

  # O solo el getter, name
  attr_reader :name

  # constructor. Se ejecuta al utilizar instanciar la clase Person con Person.new
  def initialize(name, age)
    # Variables de instancia, disponibles desde todos los métodos del objeto
    @name = name
    @age = age
  end

  # ENCAPSULACIÓN 
  
  # controla el acceso o visibilidad de los metodos de la clase, ya sean public, private o protected

  # Método público, accesible desde el exterior de la clase
  def public_method
    # called from outside
    # example: Person.new.public_medthod
  end

  private

  # Método privado! Accesible solo desde otro método de la clase
  def foo
    # Utilizamos self para acceder a la propia instancia sobre la que se ejecuta el método.
    self.name = 'Foo'
  end

  protected

  # Método protected! Accesible desde métodos de clases hijas

  def bar
    # ...
  end
Aplicamos herencia usando el operador <. Accedemos al método padre con la sentencia super. super puede sobreescribir métodos en la clase padre
Con la herencia podemos reutilizar código añadiendo a una clase hija todos los atributos/métodos de su clase padre.

class Animal
  # ...
end

class Dog < Animal
  # ...
end

# EJEMPLO HERENCIA

class Publication
    attr_accessor :publisher
end

class Magazine < Publication
    attr_accessor :editor
end


class TheNews < Magazine
    # TheNews hereda editor del padre  Magazine y publisher del abuelo Publication 
end

@variable de instancia
@@variable de clase


#También es posible ejecutar métodos sobre una clase. Al fin y al cabo, las clases son instancias de la clase Class:

class Person
  # variable de clase
  @@count = 0

  def initialize(name)
    @name= name
    @@count += 1
  end

  # Método de clase, se define sobre self
  def self.print_count
    puts "Person count is #{@@count}"
  end
end

p1 = Person.new
p2 = Person.new
puts Person.print_count
# Person count is 2      
=end