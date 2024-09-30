#!/bin/bash
# Ejercicio12, crea un shell script que al ejecutarlo muestre por pantalla uno de estos mensajes Buenos dias, Buenas tardes o Buenas noches, en función de la hora que sea en el sistema (de 8:00 de la mañana a 15:00 será mañana, de 15:00 a 20:00 será tarde y el resto será noche). Para obtener la hora del sistema utiliza el comando date. Sara
hora=`date +%H`
    if [ $hora -ge 8 -a $hora -lt 15 ];then

        echo "Buenos dias"

    elif [ $hora -ge 15 -a $hora -lt 20 ];then

        echo "Buenas tardes"

    elif [ $hora -ge 20 -o $hora -lt 8 ];then

        echo "Buenas noches"

    fi
