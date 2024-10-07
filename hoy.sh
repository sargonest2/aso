#!/bin/bash
#Script de animo segun el dia de la semana.
clear
hoy=$(date +%A)
echo -e "\n¿Cual es tu día favorito de la semana?\n"
read fav
case $hoy in
    "$fav" )
        echo -e "\n¡Enhorabuena $USER, es $fav, tu día favorito de la semana! \n"
        ;;
    "lunes" )
        echo -e "\nOdio los $hoy " 
        ;;
    "martes" )
        echo -e "\nHoy es $hoy, igual que el lunes, pero más cansado. "
        ;;
    "miercoles" )
        echo -e "\nHoy es $hoy, mitad de semana."
        ;;
    "jueves" )
        echo -e "\nHoy es $hoy, ya queda menos."
        ;;
    "viernes" )
        echo -e "\nHoy es $hoy, difruta del finde"
        ;;
    "sabado" )
        echo -e "\nHoy es $hoy, puedes descansar"
        ;;
    "domingo" )
        echo -e "\nHoy es $hoy, dia de entrega de tareas"
        ;;
esac
