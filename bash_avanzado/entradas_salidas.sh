#!/bin/bash

echo "===== Redireccionamiento de entrada y salida ====="

# Redireccionamiento de salida (sobrescribe el archivo si existe)
echo "Hola mundo" > archivo.txt

# Redireccionamiento de salida (agrega al final del archivo)
echo "agrego linea y la muestro por pantalla" | tee -a archivo.txt

# Redireccionamiento de entrada (lee el contenido del archivo)
echo "El contenido de archivo.txt es:"
cat < archivo.txt

echo "===== Tubos (pipes) ====="

# Tubos (pipes): conexión de comandos
# Contar las líneas de un archivo
RTA=$(cat archivo.txt | wc -l)
echo "El número de líneas en archivo.txt es: $RTA"

echo "===== Control de errores y códigos de salida ====="

# Control de errores y códigos de salida
# Intente eliminar un archivo que no existe
#rm archivo_que_no_existe.txt 2> /dev/null
rm archivo_que_no_existe.txt 
if [ $? -ne 0 ]; then
    echo "Error: No se pudo eliminar el archivo."
fi
