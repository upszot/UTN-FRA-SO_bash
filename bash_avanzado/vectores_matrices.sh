#!/bin/bash

echo "===== Vectores (Arrays) ====="

# Declarar un vector
frutas=("Manzana" "Banana" "Naranja" "Pera")

# Acceder a un elemento del vector
echo "La segunda fruta es: ${frutas[1]}"

# Iterar sobre los elementos del vector
echo "Todas las frutas:"
for fruta in "${frutas[@]}"; do
    echo "- $fruta"
done

echo "===== Matrices ====="

# Declarar una matriz (array multidimensional)
declare -A matriz
matriz[0,0]=1
matriz[0,1]=2
matriz[0,2]=3
matriz[1,0]=4
matriz[1,1]=5
matriz[1,2]=6
matriz[2,0]=7
matriz[2,1]=8
matriz[2,2]=9

# Acceder a un elemento de la matriz
echo "El elemento en la posición (1,1) es: ${matriz[1,1]}"
