#!/bin/bash

echo "Línea de ejecución: ./getopts.sh -a 10"
echo "Este script maneja argumentos de línea de comandos."

# Variable para el estado de error
str_Err=0

while getopts ":a:b:" opt; do
  case $opt in
    a)
      echo "El argumento a fue proporcionado con el valor: $OPTARG" >&2
      ;;
    b)
      echo "El argumento b fue proporcionado con el valor: $OPTARG" >&2
      ;;
    \?)
      echo "Opción inválida: -$OPTARG" >&2
      # Establecer el estado de error a 1
      str_Err=1
      ;;
    :)
      echo "Opción -$OPTARG requiere un argumento." >&2
      # Establecer el estado de error a 1
      str_Err=1
      ;;
  esac
done

# Retornar el estado de error
exit $str_Err
