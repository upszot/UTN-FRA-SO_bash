#!/bin/bash

echo "Línea de ejecución: ./select_menu.sh"
echo "Este script presenta un menú interactivo."
echo "Por favor, selecciona una opción:"

options=("Opción 1" "Opción 2" "Opción 3" "Salir")

select opt in "${options[@]}"; do
    case $opt in
        "Opción 1")
            echo "Has seleccionado la Opción 1"
            ;;
        "Opción 2")
            echo "Has seleccionado la Opción 2"
            ;;
        "Opción 3")
            echo "Has seleccionado la Opción 3"
            ;;
        "Salir")
            echo "Saliendo del menú..."
            break
            ;;
        *) echo "Opción inválida";;
    esac
done
