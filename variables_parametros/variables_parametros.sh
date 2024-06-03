#!/bin/bash

# Ejemplo de uso de variables en Bash
echo "===== Variables ====="
# Declarar y asignar valores a variables
nombre="Mundo"
echo "Hola, $nombre!"

# Recibir parámetros desde la línea de comandos
echo "===== Parámetros desde la línea de comandos ====="
echo "Parámetro 1: $1"
echo "Parámetro 2: $2"

# Pedir datos al usuario con read utilizando la opción -p
echo "===== Pedir datos al usuario ====="
read -p "Ingresa tu nombre: " usuario
echo "Hola, $usuario!"

# Manejo de parámetros y variables de entorno
echo "===== Variables de entorno y parámetros ====="
echo "Nombre del script: $0"
echo "Número total de parámetros: $#"
echo "PID del proceso actual: $$"
echo "Todos los parámetros como cadena: $*"
echo "Todos los parámetros como lista: $@"
echo "Código de salida del último comando: $?"
echo "PID del último proceso ejecutado en segundo plano: $!"
echo "Último argumento del último comando ejecutado: $_"

# Simular la ejecución de un comando en segundo plano
sleep 1 &
echo "PID del último proceso ejecutado en segundo plano (tras el sleep): $!"

# Mostrar acceso a parámetros específicos
echo "Acceso a parámetros específicos: $1, $2 (si existen)"

# Fin del script
echo "===== Fin del script ====="
