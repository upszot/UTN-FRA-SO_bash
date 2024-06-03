#!/bin/bash

echo
echo "Ejecute: ./2_while_cmd_lista.sh 2_while_cmd_lista.txt" 
echo

ARCHIVO=$1

#Contador de usuarios creados
let CANT=0

#IFS->(Input Field Separator) 
IFS_anterior="$IFS"
IFS=':'
while read SH USUARIO COMENTARIO GRUPO RESTO; do
    if [[ ! ${SH} =~ ^# ]]; then
      echo "se ejecutara ->  useradd -m -s ${SH} -c \"${COMENTARIO}\" -g ${GRUPO} ${USUARIO}"
      sudo useradd -m -s ${SH} -c "${COMENTARIO}" -g ${GRUPO} ${USUARIO}
      let CANT=CANT+1
    fi
done < ${ARCHIVO}

echo
echo "Se crearon $CANT Usuarios"
echo "Visualizacion de /etc/passwd de los usuarios"
tail -n$CANT /etc/passwd
echo
echo "Muestro grupos a los que pertenecen: "
tail -n$CANT /etc/passwd |awk -F ':' '{print $1}' |xargs id
echo

