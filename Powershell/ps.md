# POWERSHELL
##1 
### Como abrirla
- Click derecho en windows 
- Shift más click derecho en la carpeta para abrir la powershell desde ese sitio.

### Conocer versión
- get-host

### Ayuda en PS
- update-help > actualizar ayuda. (Suele ser normal que algun modulo de error)

### cmdlet (combinacion verbo-nombre, accion-objeto)(PS no es case sensitive)

#### Verbos
- get obtiene info
- set cambia propiedad
- remove borra
- new crea

#### Nombres
- localuser
- localgroup
- netadapter
- partition

#### Combinaciones
- get-localuser > obtener nombre del usuario local.
- get-date > fecha sistema
- clear-host    > limpia pantalla
- get-location >saber donde estoy
- get-childitem >elemtos hijos de donde estoy
- get-localuser > saber usuarios
- get-localgroup > saber grupos
- get-netadapter > adaptadores de red

### Saber todos los comandos
- get-command

### Saber comandos del verbo new
-get-command -verb new

### Saber comandos del nombre localuser
-get-command -noun localuser

### Comandos en el que aparezca lo que busco
- get-command \*localgroup*

# 2
## MÓDULOS
- get-module > obtengo los modulos que tengo
- get-command -module nombre_modulo
- get-module -listavailable
- import-module bitlocker -verbose >importar un modulo
- get-module > y aparecera bitlocker
- remove-module bitlocker >quito el modulo de la memoria en uso

### Obtener ayuda de un cmdlet
- get-help nombre >ayuda standar
- get-help nombre -examples > ayuda c on ejemplo
- get-help nombre -detailed > ayuda detallada
- get-help nombre -full >ayuda completa

## ATAJOS
### tabulador
- escribes algo y al dar tab te va rellenando las distintas opciones delos que pueden ser
### cursores
- ariba y abajo van mostrando los comandos usandos anteriormente.
### historial
- get-history >historial de comandos
- invoke-history 10 > usa el comando10 de la historia
- forma rapida de los anterior > h > muestra la historia // r 10 usa comando 10 de la historia

- control-r: escribes lo que buscas, si pulsas control r te muestra otros

- clear-history: borra historial

### ALIAS
- apodo o sobrenombre de comando
- get-alias > todos los alias
- get-alias -definition get-childitem > muestra alias 
# 3
## GESTION ARCHIVOS Y CARPETAS
- get-localtion (pwd) > ruta o path donde nos encontramos
- set-location (cd) > desplazarnos
- get-childitem (ls) > contenido del directorio

- columna mode d directorio r lectura a archivo s archvio de sistema h oculto

- get-childitem c:\ -attributes hidden > archivos ocultos en c: bootmgr gestor arranque windows, pagefile.sys memoria vitual> esta como -a-hs- archivo oculto del sistema.

- new-item prueba1 -ItemType Directory > Crea la carpeta prueba 1
- new-item .\prueba1\texto1.txt > Crea el archivo txt texto1.
- remove-item .\prueba1\ -recurse > borra el directorio y lo que hay dentro por recurse
- new-item foto1.jpg, foto2.jpg
- new-item fotos -ItemType Directory
- move-item *.jpg fotos >mueve las fotos a la carpeta fotos
- get-childitem fotos > comprobamos que esta dentro de la carpeta
- rename-item .\fotos recuerdos > renombra a recuerdo la carpeta fotos.
- copy-item .\recuerdos\ copiaRecuerdos -recurse > copio y por si acaso tuviese subdirectorios le pongo recurse.

- get-date >prueba.txt
- get-content .\prueba.txt

#### Uso de alias
- pwd > donde estoy
- ls >me da el listado
- md prueba2 > crea directorio
- cd prueba2 >entramos en el directorio
- ni texto2.txt > creo archivo txt texto2
- cd .. > salimos
- rm prueba2 -recurse >borro directorio y subdirectorios dentro de este.

##### casi todos los alias son los mismos que en linux

### RECOPILACION ANTERIOR

- Get-Location (pwd): Ruta o path

- Set-Location (cd): Para desplazarse.

- Get-ChildItem (ls): Muestra el contenido.

- New-Item (ni/md): Para crear archivos y carpetas.

- Remove-Item (rm): Para Borrar archivos y carpetas.

- Move-Item (mv): Para mover archivos y carpetas.

- Rename-Item (ren): Para renombrar archivos y carpetas.

- Copy-Item (cp): Para copiar archivos y carpetas.

# 4
## TUBERIAS
- e.g. Conocer todos los archivos de más de 4 GB y ordenados de mayor a menor. 
- Permite conectar la salida de un cmdlet con la entrada de otro, que la tratará como su información de inicio.
- Utilizaremos el carácter | (tubería o pipe) para enlazar los comandos
- Vamos a contar los comandos del powershell
- get-command|measure-object > nos devolvera el número de comandos

- get-childitem -Recurse |where-object {$_.Length -gt 100Mb} > muestra archivos mayores de 100Mb

- get-childitem -Recurse |where-object {$_.Length -gt 100Mb}|Sort-Object -Descending

- Lo mismo pero ordenado de forma descendente

- get-childitem -Recurse |where-object {$_.Length -gt 100Mb}|Sort-Object -Descending -Property Length

- Get-NetTCPConnection|ft -a >puertos que han hecho conexión, ft -a formate como columnas
-  
- Muestra los puertos de conexión que tienen como estado "establecido".

## REDIRECCIONAMIENTO
- e.g. Almacenar esta lista ordenada en un archivo.
- Mandamos los resultados a un lugar diferente, normalmente un archivo. 
- > Crea un nuevo archivo y guarda info.
- >> Añade al contenido del archivo info.

- get-childitem >informe.txt
- get-content .\informe.txt
- get-date >>.\informe.txt
- get-content .\informe.txt

- h usamos el historial para recuperar un comando anterior

- Get-NetTCPConnection|where-object{$_.State -eq 'Established'}|ft -a >Puertos_establecidos.txt

- Y con esto hemos guardado en un archivo los puertos establecidos formateados en columnas.

# 5

## SCRIPT

### Niveles de seguridad
- Restricted: No permite la ejecución
- AllSigned: Opción más segura.Todos Scripts tienes que estar autenticados
- RemoteSigned: Los que procedan de determinado lugar tienen que estar firmados
- Unrestricted: Opción menos segura, permita la ejecucion de cualquier scripts

- get-executionpolicy => nos dice que politica de seguridad tenemos
- set-executionpolicy remotesigned
- notepad => abrimos un notepad y le escribimos lo siguiente

- Clear-host
- Write-host "Bienvenido a PowerShell"
- Get-date

- Guardamos con extension .ps1

- Escribimos el windows ise, y abrimos ps ise

# 6
## ISE Integrated Scripting Environment

- Podemos ejecutar lineas con f8 o boton al lado de run
- Podemos crear punto de interupción seleccionando una linea y f9 o click derecho. 
- Para continuar ejecución f11

### Los comentarios: utilizan el carácter almohadilla (#).

- \#Comentario de una linea
- <#Bloque de comentarios#>

### La variables : se definen con el símbolo $. PowerShell le asigna un tipo.
- $edad=51
- $nombre="Manuel Dominguez"

### Las constantes : son variables cuyo valor no cambia.

- New-Variable -Name C -Value 300000 -option constant

- llamamos a la constante con $C (no se pueden sobreescribir)

- Tipos de datos básicos: Int, Double, Char, String, Boolean.

### Leer y escribir variables.
- Read-Host =>Guarda en una variable lo que el usuario escriba, pero como texto.
- Write-Host => Muestra por pantalla texto o contenido de variable.

- Un ejemplo: 
- $nombre=Read-host "Introduce tu nombre"
- $edad=Read-host "Introduce tu edad"
- Write-host " Tu nombre es: $nombre y tu edad es: $edad "

- $edad.GetType() > nos dice que es un string

- para que esto no pase [int]$edad=
- si repetimos esto nos devuelve que $edad es int

### Operadores de variables
- Concatenación

$nombre="José"
$apellido="Fernández"
$nombreCompleto= $nombre + " " + $apellido

- Operadores numéricos.
- Los tipicos +, -, *, /, %


- Operadores lógicos.
- -eq =>igual
- -ne =>diferente
- -lt =>menor
- -le =>menos o igual
- -gt =>mayor
- -ge =>mayor o igual

### Estructuras de control

- Control+J e introduce if, ifelse, switch, etc. esto nos ahorra escribir la estructura.

- Estructuras repetitivas:  Control+J While, do while, for, foreach



# 7
## SCRIPTS

