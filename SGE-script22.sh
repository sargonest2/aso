#!/bin/bash
#Ejercicio22, realizar un script que reciba como único parámetro el nombre de un directorio, especificado mediante su nombre de ruta completo. El programa debe mostrar un listado no recursivo de todas las entradas contenidas en ese directorio, indicando para cada una de ellas si se trata de un fichero o de un directorio. Al final, debe mostrarse un mensaje indicando el número total de entradas procesadas. Sara.

ls -lh $1
echo -e "\n Número de entradas: "
ls $1 | wc -l
