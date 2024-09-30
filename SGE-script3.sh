#!/bin/bash
#Ejercicio3, ejercicio 2, mostrar nimero de lineas y de palabras. Sara
ls /etc > /etc/ejercicio2.txt
cat /etc/ejercicio2.txt

# path to the file
file_path="/etc/ejercicio2.txt"

# using wc command to count number of lines
number_of_lines=`wc --lines < $file_path`

# using wc command to count number of words
number_of_words=`wc --word < $file_path`

# Displaying number of lines and number of words
echo "Numero de lineas: $number_of_lines"
echo "Numero de palabras: $number_of_words"
