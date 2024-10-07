#!/bin/bash

#Ejercicio27, leer el parametro, si es un fichero cambiar permisos a ejecutable para el propietario, sino error. Sara
if [ -f $1 ];then
  echo -e "\nEs un fichero.\n"
  chmod u+x $1
#dar permiso ejecutar solo al propietario
  echo -e "\nSe ha dado permiso de ejecutar al propietario del fichero $1\n"

else
  echo -e "\nNo es un fichero.\n"
  read -p "Introduce de nuevo el fichero: " file

if [ -f $file ];then
  echo -e "\nEs un fichero.\n"
  chmod u+x $file
  echo -e "\nSe ha dado permiso de ejecutar al propietario del fichero $file\n"

else
  echo -e "\nNo es un fichero.\n"
fi

read -p "Introduce de nuevo el fichero o Intro para terminar: " file
fi 
