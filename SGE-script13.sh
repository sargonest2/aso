#!/bin/bash
#Ejercicio13. Construye quepermita un programa mediante un denominado menú, el mantenimiento de un pequeño archivo lista.txt con el nombre, dirección y teléfono de varias personas. Debes incluir estas opciones al programa: añadir, buscar, listar, ordenar, borrar
 

fichero=lista.txt

salida=0

while [ $salida = 0 ]; do

	echo agenda: Indroduzca una opcion. Pulse h para ayuda

	read opcion

case $opcion in

	h)

	echo -h: mostrara la ayuda de las opciones.

	echo -a: añadira una linea.

    echo -b: buscar por nombre, dirección o teléfono

	echo -l: lista el fichero de la agenda.

	echo -on: ordenara la agenda por nombre ascendente.

	echo -q: salir de la agenda.

	echo -d: Borrar el archivo

;;

	q)

	echo Gracias por usar nuesta agenda

	salida=1

;;

	l)

if [ -s $fichero ]; then

	echo -------------------AGENDA------------------

        echo Nombre	 Dirección	Télefono

        echo ------	- --------	--------

 

	for linea in $(cat $fichero)

	do

		echo -e "${linea//:/ }"

	done

else

	echo  el fichero no existe o esta vacio.

	echo Se procedera a su creacion.

	touch lista.txt

	chmod 770 lista.txt

fi

;;

on)

	sort -o $fichero $fichero

	echo Se ha ordenado por nombre ascendentemente.

;;


a)

	echo -e nombre del contacto:

	read nombre

	echo -e Dirección del contacto:

	read direccion

	echo -e Telefono de contacto:

	read telefono

	if [ -z $nombre ] || [ -z $direccion ] || [ -z $telefono ]; then

	echo "Todos los campos son obligatorios"

	fi

 

	comprobacion=`cut -f 1 -d ":" lista.txt | grep $nombre`

	if [ $comprobacion == $nombre ]; then

		echo El nombre existe

	else

		echo $nombre:$direccion:$telefono>>$fichero

	fi
;;

b)
    rm lista.txt

    echo Agenda eliminada
esac
done
