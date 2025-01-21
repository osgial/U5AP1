#!/bin/bash

read -p "Que nota tienes en el examen?: " nota

while [[ ! "$nota" =~ ^[0-9]+$ ]] || [[ $nota -lt 0 ]] || [[ $nota -gt 10 ]]; do
  echo "Por favor, introduzca un número válido entre 0 y 10."
  read -p "Que nota tienes en el ezamen?: " notas
done
