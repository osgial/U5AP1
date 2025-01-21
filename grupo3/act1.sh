#!/bin/bash

read -p "Dame un numero: " num1
read -p "Dame otro numero: " num2

if (( num1 > num2 )); then
	echo "El valor mayor es $num1"
elif (( num1 < num2 )); then
	echo "El valor mayor es $num2"
else
	echo "Los dos valores son iguales"
fi
