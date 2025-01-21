#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Por favor, proporciona un número como argumento mayor a 0."
	exit 1
else
	seq 0 $1
fi

