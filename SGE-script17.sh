#!/bin/bash
#Ejercicio17, haz un script que vaya dando la suma de todos los números que se introduzca por teclado hasta que se introduzca un 0, en cuyo caso se mostrará el último resultado y terminará el script. Sara.

op=1
res=0
until [[ $op -eq 0 ]]; do
	read -p "Introduce un número a sumar a $res: " op
	echo -e "$res + $op = \c"
	((res=$res+$op))
	echo -e "$res\n"
done
