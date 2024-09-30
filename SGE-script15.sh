#!/bin/bash
#Ejercicio15, tabla de multiplicar del parametro solicitado.
echo -e "\nIngresa un número para obtener su tabla de multiplicar: \n"
read num

cont=0
while [[ $cont -le 10 ]]
do	
   	((mult=$num * $cont))	
	echo "$num * $cont = $mult"
	((cont++))
done	
