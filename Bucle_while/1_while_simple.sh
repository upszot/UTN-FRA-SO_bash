#!/bin/bash

# Ejemplo de bucle while basado en condiciones simples
echo "===== Bucle while basado en condiciones simples ====="

# Inicializar el contador
let contador=1

# Establecer la condición del bucle
while [ $contador -le 5 ]; do
    echo "Iteración número $contador"
    # Incrementar el contador
     #((contador++))
     contador=$contador++
done

echo "Bucle terminado. Contador final: $contador"
