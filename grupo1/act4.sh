#!/bin/bash

dias_semana=("Lunes" "Martes" "Miércoles" "Jueves" "Viernes" "Sábado" "Domingo")

read -p "Introduce un número del día del mes (1-30): " dia

if [[ $dia -ge 1 && $dia -le 30 ]]; then
    dia_semana=$(( (dia - 1) % 7 ))
    echo "El día $dia corresponde a ${dias_semana[$dia_semana]}."
else
    echo "Valor fuera de rango. Por favor, introduce un número entre 1 y 30."
fi
