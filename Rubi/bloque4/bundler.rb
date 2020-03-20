# Ruby bundler

# > Una gema para dominarlas a todas

# > Las dependencias pueden ser un infierno!A

# > Unirse a un proyecto que gestione el uso de todas las gemas con : bundle install

# En el fichero Gemfile vamos a definir la fuente de donde descargamos

# con source, normalemnte source 'https://rubygems.org'

# Indicaremos gemas e incluso podemos indicar la versión de estas. Es lo suyo que sean las mismas de tu equipo.

# # Ejemplo

# source "https://gems.example.com"

# #este seria el source inline
# gem 'my_gem', '1.0', source: 'https://gems.example.com'

# #este seria el source pero con un bloque
# source 'https://gems.example.com' do
#     gem 'my_gem', '1.0'
#     gem 'another_gem', '1.2.1'
# end


# gem 'nokogiri'

# gem 'rails', '5.0.0' # una determinada

# gem 'rack', '>=1.0' # esa version o más moderna

# gem 'thin', '~>1.1' # >= 1.1, < 2.0 # esa version  o superrior, pero no la dos ni superior.

# # GIT - PATH

# Para git seria algo asi:

# gem 'nokogiri', git 'https://github.com/tenderlove/nokogiri.git',
# branch: '1.4'

# Para path: (GEMAS LOCALES O EN DESARROLLO)

# gem 'extracted_library', path: './vendor/extracted_library'

# # GRUPOS

# Un bloque por cada grupo.   

# group :test do
#     gem 'rspec'
# end


# # COMANDOS BUNDLE

# bundle install

# bundle update ACTUALIZA LA VERSION DEL GEM.LOCK

# bundle package ACTUALIZA Y LAS GUARDA EN CARPETA VENDOR

# bundle exec EJECUTA UN COMANDO DEL GEM FILE

# bundle gem CREAR NUEVO PROYECTO O NUEVA GEMA, Y CREA LA ESTRUCTURA DE DIRECTORIOS ETC.


# # GEMFILE.LOCK
# Sirve para instalar dependencias de gemas que hemos instalado y pueden depender de gemas de terceros que no hemos especificado.


# # PAGINA DE DOCUMENTACIÓN

# >>>bundler.io

