#!/bin/bash
#Ejercicio6, pedir una palabra y añadir a lista.txt. Sara
echo -e "\nIngresa una palabra: \n"
read word 
echo "$word" >> /etc/lista.txt
cat /etc/lista.txt

