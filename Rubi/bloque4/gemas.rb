# Ruby Gems
# Programar en Ruby, a menudo consiste en implementar clases y módulos repletas de funcionalidad. Es posible empaquetar nuestro código y compartirlo con otros desarrolladores mediante el uso de gemas o librerias. en www.rubygems.org puedes encontrar multitud de gemas subidas a un repositorio público por otros desarrolladores y disponibles para descargar e instalar.

# Instalamos una gema con el comando gem:

# $ gem install dni_nie
# 1 gem installed
# Cargamos la gema en nuestro programa con el comando require:

# require 'dni_nie'

# puts DniNie.letra ‘45050505’
# puts DniNie.validate_doc '45050505Z'
# Debug con la gema pry
# Cuando programamos en ruby, es muy útil depurar nuestro código añadiendo breakpoints que paran la ejecución de nuestro programa en un punto concreto y nos ofrecen una consola interactiva donde tenemos acceso a todos los elementos del código. Para ello, utilizamos la gema pry y la sentencia binding.pry.

# $ gem install pry

# require 'pry'

# puts 'some code'
# a = :variable
# binding.pry