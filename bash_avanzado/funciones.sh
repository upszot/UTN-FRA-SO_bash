#!/bin/bash

NOMBRE=$1

# Definir una función
SALUDAR() {
    read -p "¡Hola, $1! Por favor ingresa un Nro para calcular el factorial: " NRO
    echo "$NRO"  # Retornar el número ingresado por el usuario
}

# Definir una función recursiva para calcular el factorial de un número
FACTORIAL() {
    if [ $1 -eq 0 ]; then
        echo 1
    else
        local TEMP=$(( $1 - 1 ))
        local RESULT=$(FACTORIAL $TEMP)
        echo $(( $1 * $RESULT ))
    fi
}

# Llamar a funcion SALUDAR
NUMERO=$(SALUDAR $NOMBRE)

# Llamar a la función FACTORIAL
RESULTADO=$(FACTORIAL $NUMERO)
echo "El factorial de $NUMERO es: $RESULTADO"
