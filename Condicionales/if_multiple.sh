#!/bin/bash

echo "===== Condicionales múltiples ====="

# Comparación de números
num1=15
num2=15
num3=30

if [[ ( $num1 == $num2 ) && ( $num2 -lt $num3 ) ]]; then
    echo "$num1 es igual a $num2 y $num2 es menor que $num3"
fi

# Comparación de cadenas
str1="hello"
str2="hello"
str3="world"

if [[ ( "$str1" == "$str2" ) || ( "$str1" != "$str3" ) ]]; then
    echo "$str1 es igual a $str2 o diferente de $str3"
fi
