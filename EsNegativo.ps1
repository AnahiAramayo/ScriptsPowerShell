#Actividad 9. Uso de estructura de selección if. Teniendo en cuenta la estructura if en shell que se muestra en la Figura 1, 
#ingrese un número por teclado y determine si es positivo o negativo.
cls
[decimal]$numero = read-host "Introduce un número"
if ($numero -ge  0)
{
"------ Es Positivo ------"
}
else
{
"------ Es Negativo ------"
}


