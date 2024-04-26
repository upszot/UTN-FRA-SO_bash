#!/bin/bash

LISTA=$1

IFS=$'\n'
for i in `cat $LISTA | awk -F ':' '{print $1" "$2}'| grep -v ^#`
do
	USUARIO=$(echo  $i |awk '{print $1}')
	GRUPO=$(echo  $i |awk '{print $2}')
	echo "sudo useradd -m -s /bin/bash -g $GRUPO $USUARIO"
done
