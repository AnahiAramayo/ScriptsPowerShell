#Actividad 10. Uso de estructura de seleccion multiple case. Construir un script que permita mostrar el dia 
#de la semana correspondiente al código elegido comprendido entre el 1-lunes al 7-domingo, 
#en caso de ingresar cualquier otro código mostrar el mensaje "dia incorrecto".

cls
[int]$numero = read-host "Introduce un número"
switch ($numero)
{
1 {"Lunes"}
2 {"Martes"}
3 {"Miércoles"}
4 {"Jueves"}
5 {"Viernes"}
6 {"Sábado"}
7 {"Domingo"}
 default {"Día incorrecto."}
}