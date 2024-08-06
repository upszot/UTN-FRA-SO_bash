#!/bin/bash

echo
echo "Para ejecutar:   ./1_for_lista.sh  2_for_cmd_lista.txt"
echo

LISTA=$1

ANT_IFS=$IFS
IFS=$'\n'
for LINEA in `cat $LISTA |  grep -v ^#`
do
	USUARIO=$(echo  $LINEA |awk -F ':' '{print $1}')
	GRUPO=$(echo  $LINEA |awk -F ':' '{print $2}')
	echo "sudo useradd -m -s /bin/bash -g $GRUPO $USUARIO"
done
IFS=$ANT_IFS

