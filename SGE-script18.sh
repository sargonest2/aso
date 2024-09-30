#!/bin/bash
#Ejercicio18, realizar un script utilizando la estructura el bucle for que muestre el siguiente patrón: 
#	1
#	12
#	123
#	1234
#	12345
#Sara.

cont=0

for (( i=1 ; i<=5 ; i++ ))
do
	
	for (( x=1; x<=$i ; x++ ))
	do
		echo -e "$x\c "	     	
	done
		echo -e "\n" 
done
