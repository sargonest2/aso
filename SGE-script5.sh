#!/bin/bash
#Ejercicio5, pedir 2 numeros y mostrar media. Sara
echo -e "\nIngresa un número: \n"
read num1
echo -e "\nIngresa otro número: \n"
read num2
media=$(((num1 + num2)/2))
echo -e "\nLa media aritmetica es $media"
