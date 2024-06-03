#!/bin/bash

echo
echo "Para ejecutar:   ./1_for_lista.sh  2_for_cmd_lista.txt"
echo

LISTA=$1

IFS=$'\n'
for i in `cat $LISTA | awk -F ':' '{print $1" "$2}'| grep -v ^#`
do
	USUARIO=$(echo  $i |awk '{print $1}')
	GRUPO=$(echo  $i |awk '{print $2}')
	sudo useradd -m -s /bin/bash -g $GRUPO $USUARIO
done
