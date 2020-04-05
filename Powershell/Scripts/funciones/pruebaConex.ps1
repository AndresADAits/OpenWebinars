#Definicion de la funcion Conectividad
Function Conectividad($datos){

foreach ($ip in $datos)
{
  $respuesta=Test-Connection $ip -Count 1 -Quiet
  if ($respuesta -eq "true")
  {
      
      Write-Host "$ip Conexión establecida"
  }else{
       Write-Host " $ip Error de conexión"
  }
}
}


# Inicio del programa
Clear-Host
Write-host "Conectividad"
$datos = Get-Content C:\Users\J.Andrés\Desktop\servidores.txt

# Llamamos a la funcion anterior
Conectividad $datos


 