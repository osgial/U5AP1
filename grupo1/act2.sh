#!/bin/bash

read -p "Escriba un numero mayor a 0: " valor;

if (( $valor % 2 == 0 ))
then
echo "el numero es par";
else
echo "el numero es impar";
fi;
