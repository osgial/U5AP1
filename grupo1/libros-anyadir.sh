#!/bin/bash

read -p "Introduce el título del libro: " titulo
read -p "Introduce el año de publicación: " anio
read -p "Introduce la editorial: " editorial

echo "Géneros disponibles:"
echo "1. Ciencia ficción"
echo "2. Fantasía"
echo "3. Novela histórica"
echo "4. Terror"
echo "5. Romance"
echo "6. No ficción"

read -p "Introduce el número correspondiente al género: " genero_opcion

case $genero_opcion in
    1) genero="Ciencia ficción";;
    2) genero="Fantasía";;
    3) genero="Novela histórica";;
    4) genero="Terror";;
    5) genero="Romance";;
    6) genero="No ficción";;
    *) echo "Opción no válida. Por favor, selecciona un número entre 1 y 6." ;;
esac

echo "$titulo | $anio | $editorial | $genero" >> "bdlibros.txt"

echo "El libro ha sido añadido a bdlibros.txt"
