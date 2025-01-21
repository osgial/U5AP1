#!/bin/bash

read -p "Cuantos numero aleatorio que eres generar?: " cantnum
read -p "Cual es el valor mimnimo a generar?: " minnum
read -p "Cual es el valor maximo a generar?: " maxnum

for ((i=1; i<=cantnum; i++)); do
	num=$((RANDOM % (maxnum - minnum + 1) + minnum))
	echo $num
done
