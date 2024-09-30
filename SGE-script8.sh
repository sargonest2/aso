#!/bin/bash
#Ejercicio8, pedir 2 numeros y decir el mayor. Sara
echo -e "\nIngresa un número: \n"
read num1
echo -e "\nIngresa otro número: \n"
read num2
if [ $num1 -gt $num2 ]; then
    echo "\nEl número $num1 es mayor que $num2\n"
else
    echo "\nEl número $num2 es mayor que $num1\n"
fi
