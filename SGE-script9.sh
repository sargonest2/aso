#!/bin/bash
#Ejercicio9, ofrecer operaciones matematicas y hacer la elegida. Sara
echo -e "\nIngresa un número: \n"
read num1
echo -e "\nIngresa otro número: \n"
read num2
echo -e "\nElige una operación:\n \n1: sumar\n \n2: restar\n \n3: multiplicar\n \n4: dividir\n"
read op
case  $op in 
   1)
    sum=$(($num1+$num2))
    echo -e "\nEl resultado de la suma es $sum\n";;
   2)
    res=$(($num1-$num2))
    echo -e "\nEl resultado de la resta es $res\n";;
   3)
    mul=$(($num1*$num2))
    echo -e "\nEl resultado de la multiplicación es $mul\n";;
   4)
    div=$(($num1/$num2))
    echo -e "\nEl resultado de la división es $div\n";;
   *)
    echo -e "\nNo has elegido ninguna operación correcta, del 1 al 4, por favor.\n"
esac


