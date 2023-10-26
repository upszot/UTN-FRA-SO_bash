#!/bin/bash

LISTA=$1

for i in `cat $LISTA | awk '{print $1}'| grep -v ^#`
do
	echo "Valor: $i"

done
