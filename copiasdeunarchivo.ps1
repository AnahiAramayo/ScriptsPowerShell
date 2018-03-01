#Actividad 12. Uso de estructura de repetición for. Realice un script utilizando el bucle for,
#que permita crear 5 (cinco) copias backup del archivo C:\Users\<usuario>\archivo.txt  renombrados 
#con el formato archivo-bkp#, donde # es un número secuencial que usted debe generar de forma automática. 
#Estas copias deben guardarse en un nuevo directorio denominado backup dentro de nuestro directorio de 
#trabajo C:\Users\<usuario>\so-taller
for ($i=1; $i -le 5; $i++) {
     Copy-Item -Path D:\UNPA\SO\Scripts\bkp\archivo.txt -Destination D:\UNPA\SO\Scripts\bkp\archivo-bkp$i.txt
}

