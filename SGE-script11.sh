#/bin/bash
#Realizar un shell script que copie el �chero indicado como primer parámetro posicional de manera que la copia tenga el nombre indicado en el segundo parámetro posicional. Hay que controlar: a) Que se indiquen dos parámetros. b) Que exista y sea archivo ordinario el primer parámetro. c) Que no exista un identi�cador (�chero ordinario, directorio, etc..) con el mismo nombre que el indicado en el segundo parámetro. Si se produce alguna de las situaciones anteriores se visualizará un mensaje de error indicativo.
#Un rollo muy largo. Sara.

if [[ $# -eq 2 ]]; then
	if [[ -f $1 ]]; then
		if [[ ! -f $2 ]]; then
			cp $1 $2
		else
			echo "$2 existe. Introduce un parámetro inexistente"
		fi
	else
		echo "$1 no existe. Introduce un parámetro existente"
	fi
else
	echo "Error. Introduce 2 parámetros"
fi
