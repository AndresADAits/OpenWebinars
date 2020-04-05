#Conexión con el servidor
Clear-Host
Write-host "Conectividad"
$datos = Get-Content C:\Users\J.Andrés\Desktop\servidores.txt

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


 