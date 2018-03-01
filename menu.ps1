#Actividad 11. Realizar un script en el que se presente un conjunto de opciones para ejecutar comandos, el trabajo terminará hasta el que el 
#usuario elija la opción salir.
#1. Opción 1: Crear un directorio con el nombre so-practica# (# número secuencial que usted debe generar de forma automática) 
    #dentro del directorio que creamos en ejercicios anteriores /home/<usuario>/so-taller
#2. Opción 2: Mostrar directorios creados dentro de /home/<usuario>/so-taller
#3. Opción 3: Eliminar un directorio especificado por el usuario que fue creado en /home/<usuario>/sotaller
#4. Opción 4: Salir

[int]$contador=0     
do 
{ 
     cls 
     Write-Host "======================== Mi Menú ======================== " 
     Write-Host "1: Presione '1' para Crear un directorio." 
     Write-Host "2: Presione '2' para Mostrar directorios creados." 
     Write-Host "3: Presione '3' para Eliminar un directorio especifico." 
     Write-Host "4: Presione '4' para salir." 
     Write-Host "========================================================= " 
     $input = Read-Host "Haga una selección" 
     
     switch ($input) 
     { 
           '1'{ cls 
                "Usted elige crear una carpeta en C:\Users\<usuario>\so-taller"
                if ($contador -eq 0){
                    New-item -path D:\UNPA\SO\Scripts\menu\so-practica –type directory
                    $contador=1
                }else
                {
                    New-item -path D:\UNPA\SO\Scripts\menu\so-practica$contador –type directory
                       [int]$contador = $contador + 1
                }
           }'2'{ 
                cls 
                'Usted elige Mostrar directorios creados.' 
                Get-ChildItem -Force D:\UNPA\SO\Scripts\menu\
           }'3'{ 
                cls 
                ' Elegiste la opción # 3 ' 
                Get-ChildItem -Force D:\UNPA\SO\Scripts\menu\
                write-host ------------------------------------------------
                $borrar= read-host " Ingrese el directorio que sea borrar"
                Remove-Item D:\UNPA\SO\Scripts\menu\$borrar
                write-host ------------------------------------------------
                write-host "La carpeta $borrar fue borrado con exito"

           }'q'{ 
                return 
           } 
     } 
     pause
} 
until ($input -eq' 4 ')