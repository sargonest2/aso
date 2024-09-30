#!/bin/bash
#Ejercicio23, modifica el script anterior para que indique si se trata de un fichero, de un directorio, de un enlace simbólico, un archivo especial de bloque, archivo especial de caracter. Debes pasarle el directorio /dev y verificar que funciona bien. Sara

if [[ -e $1 ]]; then
  	if [[ -b $1 ]]; then
    		echo "$1 existe y es un archivo especial de bloque"
  	elif [[ -c $1 ]]; then
    		echo "$1 existe y es un archivo especial de caracter"
  	elif [[ -d $1 ]]; then
    		echo "$1 existe y es un directorio"
	elif [[ -h $1 ]]; then
    		echo "$1 existe y es un enlace simbolico"
  	else
    		echo "$1 existe y es un fichero"
	fi
else
	echo "$1 no existe"
fi
