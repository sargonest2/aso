#!/bin/bash
#Ejercicio10, pide un numero y di si es par o impar. Sara
echo -e "\nIngresa un número: \n"
read num

if [ $((num % 2)) -eq 0 ]; then
    echo -e "\nEl número $num es un número par\n"
else
    echo -e "\nEl número $num es un número impar.\n"
fi
