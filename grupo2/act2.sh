#!/bin/bash

if [[ $1 =~ ^[0-9]+$ ]]
then
	if (( $1 % 2 == 0 ))
    then
        echo "El numero es par"
    else
        echo "El numero es impar"
    fi
else
	echo "Por favor, introduzca un numero valido"
fi