#!/bin/bash
#Ejercicio21, cCrea un script que consista en un juego de adivinar un número del 1 al 100. El número a adivinar se pondrá fijo al principio del script. Se le irán preguntando números al usuario y se dirá si el número es mayor o menor que el que hay que adivinar. El juego termina si el usuario averigua el número (Mensaje de Enhorabuena) o introduce un 0 (Se rinde). Sara.

num=$((SRANDOM % 100 + 1))
op=101

until [[ $op -eq 0 ]]
 do
	echo "Introduce el número 0 para rendirte "
	read -p "Introduce un número: " op
   if [[ $op -lt $num && $op -ne 0 ]]; then
	echo "$op es menor"
   elif [[ $op -gt $num ]]; then
	echo "$op es mayor"
   elif [[ $op -eq $num ]]; then
	echo "Enhorabuena! Has acertado"
     exit 0
   elif [[ $op -eq 0 ]]; then
	echo "Te has rendido"
   else
	echo "Error. Introduce un valor numérico"
   fi
  done
