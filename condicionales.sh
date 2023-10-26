#!/bin/bash
echo 
echo "ingrese 2 numeros separados por espacios, e ingrese 2 palabras separados por espacios"

ARG1=$1
ARG2=$2
ARG3=$3
ARG4=$4

echo
echo "Valido los numeros: $ARG1 y $ARG2"
if [ $ARG1 -eq $ARG2 ]; then
	echo "son iguales"
else
	echo "son distintos"
fi

if [ $ARG1 -eq $ARG2 ]; then
	echo "son iguales"
else
	echo "son distintos"
