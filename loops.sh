#!/bin/bash

LISTA=$1

IFS=$'\n'
for i in `cat $LISTA | awk '{print $1" "$2}'| grep -v ^#`
do
	NOMBRE=$(echo  $i |awk '{print $1}')
	APELLIDO=$(echo  $i |awk '{print $2}')
	echo "Valor: $i "
	echo " apellido: $APELLIDO nombre: $NOMBRE"

done
