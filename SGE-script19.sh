#!/bin/bash
#Ejercicio19, realizar un script utilizando la estructura el bucle for que muestre el siguiente patrón:
#	1
#	22
#	333
#	4444
#	55555
#Sara.

cont=0

for (( i=1 ; i<=5 ; i++ ))
do
	
	for (( x=1; x<=$i ; x++ ))
	do
		echo -e "$i\c "	     	
	done
		echo -e "\n" 
done
