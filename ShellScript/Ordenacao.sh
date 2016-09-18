#!/bin/bash

if [ -z $1 ] ; then
	echo "informe um paramentro!"
else
	sort < $1 > ordenacao_temp
	cat ordenacao_temp > $1
	rm ordenacao_temp
fi
