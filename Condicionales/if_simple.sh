#!/bin/bash

echo "===== Condicional if: condiciones simples ====="

# Notación Doble [[ ]] | Notación simple [ ]
# -------------|-----------------
#     ==       |     -eq
#     !=       |     -ne
#     <        |     -lt
#     <=       |     -le
#     >        |     -gt
#     >=       |     -ge

# Comparación de números usando -lt y ==
num1=10
num2=20

if [ $num1 -lt $num2 ]; then
    echo "$num1 es menor que $num2 (usando -lt)"
fi

if [[ $num1 < $num2 ]]; then
    echo "$num1 es menor que $num2 (usando < )"
fi

if [[ $num1 == $num2 ]]; then
    echo "$num1 es igual a $num2 (usando ==)"
else
    echo "$num1 no es igual a $num2 (usando ==)"
fi

if [ $num1 -eq $num2 ]; then
    echo "$num1 es igual a $num2 (usando -eq)"
else
    echo "$num1 no es igual a $num2 (usando -eq)"
fi


# Comparación de cadenas usando ==
str1="hola"
str2="mundo"

if [ "$str1" == "$str2" ]; then
    echo "Las cadenas $str1 y $str2 son iguales (usando ==)"
else
    echo "Las cadenas $str1 y $str2 son diferentes (usando ==)"
fi


