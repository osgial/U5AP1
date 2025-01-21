#!/bin/bash

archivo="bdlibros.txt"

echo "Menú de opciones:"
echo "1) Buscar por título"
echo "2) Buscar por año"
echo "3) Buscar por editorial"
echo "4) Buscar por género"
echo "5) Insertar libro"
echo "6) Salir"

read -p "Selecciona una opción: " opcion

case $opcion in
1)
    read -p "Introduce el título a buscar: " titulo
    echo "Resultados de la búsqueda por título: $titulo"
    grep -i "$titulo" "$archivo" || echo "No se encontraron resultados."
    echo
    ;;
2)
    read -p "Introduce el año a buscar: " anio
    echo "Resultados de la búsqueda por año: $anio"
    grep -i "$anio" "$archivo" || echo "No se encontraron resultados."
    echo
    ;;
3)
    read -p "Introduce la editorial a buscar: " editorial
    echo "Resultados de la búsqueda por editorial: $editorial"
    grep -i "$editorial" "$archivo" || echo "No se encontraron resultados."
    echo
    ;;
4)
    read -p "Introduce el género a buscar: " genero
    echo "Resultados de la búsqueda por género: $genero"
    grep -i "$genero" "$archivo" || echo "No se encontraron resultados."
    echo
    ;;
5)
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
        1) genero="Ciencia ficción"; break ;;
        2) genero="Fantasía"; break ;;
        3) genero="Novela histórica"; break ;;
        4) genero="Terror"; break ;;
        5) genero="Romance"; break ;;
        6) genero="No ficción"; break ;;
        *) echo "Opción no válida. Por favor, selecciona un número entre 1 y 6." ;;
    esac

    echo "$titulo | $anio | $editorial | $genero" >> "$archivo"
    echo "El libro ha sido añadido a $archivo."
    echo
    ;;
6)
    echo "Saliendo del programa. ¡Adiós!"
    ;;
*)
    echo "Opción no válida. Por favor, selecciona un número entre 1 y 6."
    ;;
esac