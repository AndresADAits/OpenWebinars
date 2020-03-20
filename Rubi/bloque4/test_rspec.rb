# USANDO LA GEMA RSPEC

#Es un conjunto de una serie de gemas

# rspec-core funcionalidad basicas
# rspec-expectations metodos para comprobaciones
# rspec-mocks trabajar con mocks
# rspec-rails testing de app readlines

# Lo primero es instalar la gema con gem install RSPEC

# Al usarlo, el test tiene extencsion spec.rb
# >>dado_trucado_spec.rb

# con el siguiente codigo

require_relative 'dado_trucado'

describe DadoTrucado do
    dado = DadoTrucado.new

    describe '#tirada' do
        it 'sale siempre 6' do
            expect (dado.tirada).to be (6)
        end
    end
end

# describe, it y expect son metodos de RSPEC


# COMO EJECUTAREMOS EL TEST
# Con el comando rspec dado_trucado_spec.rb
# y debajo te pondria si ha sido ejecutado con exito o los fallos

# MÉTODO describe

Rspec.describe MyClass do
    # rspec code
end

#implementar casos de prueba para esa clases o modulo.

#DESCRIBES ANIDADOS

Rspec.describe MyClass do
    describe '#instance_method' do
        # test
    end

    describe '.class_method' do
        #test
    end
end

# MÉTODO context

Rspec.describe MyClass do
    context 'when given condition'do
    # rspec code
    end
end

# es como un bloque describe, primer arguento es cuando, que es una determianda condicion que se da en ese contexto

# MÉTODO it
Rspec.describe MyClass do
    describe '#my_method' do
        it 'expectation message' do
            # expect code
        end
    end
end


# metodos que definen los casos de prueba concreto, recibe un nombre del caso de prueba y habra un bloque  con codigo ,que sera el test a ejecutar


# Dentro de it iran las expectations

Rspec.describe MyClass do
    describe '#my_method' do
        it 'expectation message' do
            expect(input).to eq(output)
        end
    end
end

# tiene la entrada la condicion que vamos a probar, y en la salida lo que esperamos que devuelva

expect().to
expect().not_to

# esperamos que devuelva o que no devuelva determianda respeusta.

# EJEMPLOS DE EXPECTATIONS PARA IGUALDAD

expect(a).to eq(b) # OK si a.eql?(b)
expect(a).to be(b) # OK si a.equal?(b)

# en el caso de numeros un 3 es igual que un 3 pero con los strings no por esos el ejemplo de arriba  serviria para numeros pero no para strings, es de abajo es para strings

expect('hello').to eq('hello') # OK
expect('hello').to be('hello') # ERROR

#en el de abajo compara simbolos, ya que un simbolo siemrpe es el mismo objeto como tb pasa con los numeros
expect(:hello).to be(:hello) # ERROR
expect(5).to be(5) #OK


# TIPOS DE EXPECTATIONS

# COMPARACION

expect(9).to be > 6 
expect(3).to be <= 3 
expect(1).to be < 6
expect('a').to be < 'b'
# comparar que sea mayor, menor igual, etc

# TIPO

expect(obj).to be_kind_of(type)
expect(obj).to be_a_kind_of(type)
expect(obj).to be_a(type)
expect(obj).to be_an(type)

# que un objeto sea instancia o subinstancia de una determinada clase

expect(obj).to be_an_instance_of(type)
expect(obj).to be_instance_of(type)

# expect(3).to be_a(numeric)

# BOOLEAN

expect(obj).to be_truthy # not false or nil (estado verdadero)
expect(obj).to be_falsey # false or nil (estado falso o nil)
expect(obj).to be_nil # nil (estado nil)

# CHANGE

#expect ahora recibe un bloque

expect { Counter.increment }.to change { Counter.count }.from(0).to(1)
# comprueba que la ejecución en ese momento de un bloque hace que exita un cambio en otro bloque de codigo que devuelve un numero
# en este caso es un contador que va de cero a uno

expect { Counter.increment }.to change { Counter.count }.by(1)

# lo mismo que arriba, en este caso con by, que aumenta en uno

# en www.rspec.info esta toda la documentacion, de los bloques y metodos.

# FIN DEL CURSO