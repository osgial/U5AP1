#!/bin/bash

if [[ -e "$1" ]]; then
	echo "El fichero '$1' existe."
	tac $1
else
	echo "El fichero '$1' no existe"
fi

#para realizar la ultima parte en mi caso tendre que hacer un mkdir en ~/bin/ y hacer un mv de ~/bin/micat.sh
