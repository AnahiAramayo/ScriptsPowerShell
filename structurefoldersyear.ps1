<#This code creates a folder structure in which each month of the year is 30 days(sub-folder)#>


 #Month of the year
$meses=("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre") 

#for each month
foreach ($Item in $meses)
{
    New-Item -Path "D:\$Item" -ItemType "directory"         #create a folder with the name of de month
    for ($i=1;$i -le 30;$I++)                               #30 creates subfolder, representing 30 days of the month
    {
        New-Item -Path "D:\$Item\$i" -ItemType "directory"
    }
}
  