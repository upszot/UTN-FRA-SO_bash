#!/bin/bash

echo "===== Case: múltiples opciones ====="

# Variable para el caso de números
num=2

case $num in
    1)
        echo "El número es 1"
        ;;
    2 | 3)
        echo "El número es 2 o 3"
        ;;
    *)
        echo "Número desconocido"
        ;;
esac

# Variable para el caso de cadenas
letra="c"

case $letra in
    "a")
        echo "La letra es a"
        ;;
    "b" | "c")
        echo "La letra es b o c"
        ;;
    *)
        echo "Letra desconocida"
        ;;
esac
