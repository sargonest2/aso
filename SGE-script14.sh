#!/bin/bash
#Ejercicio14.Permita dar de alta y de baja a usuario del sistema indicados como argumento: /Ejercicio14.sh alta/baja nombre apellido1 apellido2 [grupo]. Sara.
nom=${$2:0:1}
ap1=${$3:0:2}
ap2=${$4:0:2}

if [[ $# -lt 4 ]]; then
	echo "Error. La sintaxis correcta es ./Ejercicio14.sh alta/baja nombre apellido1 apellido2 [grupo]"
else
	if [[ $# -eq 5 ]]; then
	 if [[ $1 == "alta" ]]; then
		echo "alta"
		  useradd "alu${ap1}${ap2}${nom}"
		  groupadd $5
                  usermod -a -G $5 "alu${ap1}${ap2}${nom}"
		  echo "Usuario alu${ap1}${ap2}${nom} creado y añadido a $5"
	 elif [[ $1 == "baja" ]]; then
		  userdel "alu${ap1}${ap2}${nom}"
		  groupdel $5
                  echo "Usuario alu${ape1}${ape2}${nom} eliminado correctamente"
		else
                  echo "Formato incorrecto"
	 fi
	else
	 if [[ $1 == "alta" ]]; then
		useradd "alu${ap1}${ap2}${nom}"
          	echo "Usuario alu${ap1}${ap2}${nom} creado"
	 elif [[ $1 == "baja" ]]; then
		 userdel "alu${ap1}${ap2}${nom}"
	         echo "Usuario alu${ap1}${ap2}${nom} eliminado"
	 else
		echo "Error. Formato incorrecto"
	 fi
    fi
fi
