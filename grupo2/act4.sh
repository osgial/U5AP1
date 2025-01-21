#!/bin/bash

precio=0
litros=0

read -p "Cuantos litros de agua han sido consumidos?: " litros

while [[ ! "$litros" =~ ^[0-9]+$ ]] || [[ $litros -le 0 ]]; do
  echo "Por favor, introduzca un número válido mayor que 0."
  read -p "Cuantos litros de agua han sido consumidos?: " litros
done

if [[ $litros -le 50 ]]; then
precio=50
elif [[ $litros -gt 200 ]]; then
precio=$((litros * 10 / 100))
else
precio=$((litros * 20 / 100))
fi

echo "El coste total es de: $precio €"