#!/bin/bash
#Ejercicio20, pedir 1 numero y verificar si es primo. Sara
echo -e "\nIngresa un número para saber si es primo: \n"
read num
for (( c=$num; c<=$num; c++ ))
do
        divisores=0

        for i in `seq $c`

        do

            if [ `expr $c % $i` -eq 0 ]

            then

                echo $i

                let divisores+=1

                if [ $divisores -gt 2 ];then

                    break

                fi

            fi

        done

        if [ $divisores -eq 2 ]

        then

            echo $c, "numero primo."

        else

            echo $c, "numero NO primo."

        fi
done
