#!/bin/bash
#Ejercicio7, pedir directorio y crear tar con nombre fecha_directorio.tar.gz. Sara
echo -e "\n Ingresa la ruta del directorio a comprimir: \n"
read ruta
dir="${ruta##*/}"
fecha=$(date +%Y%m%d_%H%M%S)
tar -czf "backup_$fecha.tar.gz" "$ruta"
echo "Backup de $dir completado: backup_$fecha-$dir.tar.gz"

#echo -e "\nNo me sale, dejarlo para luego\n"
