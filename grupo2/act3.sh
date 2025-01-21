#!/bin/bash

total=0
read -p "Introduzca el numero 0: " numero

while [ "$numero" -ne 0 ]
do
total=$((total + numero))
read -p "Numero incorrecto por favor vuelva a introducir el numero 0: " numero
done

echo "El total acumulado es: $total"