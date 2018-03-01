#Actividad 13. Crear un script que permita crear un directorio en un lugar determinado, para ello utilizara dos parámetros: 
#(1) nombre del directorio a crear y 
#(2) path del lugar a crear. 
#Para poder utilizar los valores recibidos dentro del script se utiliza el símbolo $ y el numero 
#de orden del parámetro. Por ejemplo: Al ejecutar $./script "ejemplo" dentro del script puedo reproducir la entrada con el 
#comando echo $1. Una particularidad es que cuando más de 10 parámetros se deben encerrar entre llaves, por ejemplo ${10}

Param(
  [string]$nombre,
  [string]$path
)
New-item -path $path$nombre –type directory

