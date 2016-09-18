#!/bin/bash

if [ -z $1 ] ; then
	echo "informe um paramentro!"
else

	dir=`cat $1 | wc -l`
	l=$dir
	grupo=`grep $USERNAME /etc/group | cut -d : -f 1`
	echo "$var"
	for (( i = 1 ; i <= $dir ; i = i + 1 ))
	do
		linha=`tail -n $l $1 | head -n 1`
		let l--
		pasta=`echo $linha | cut -d : -f 1`
		dono=`echo $linha | cut -d : -f 2`
		grupo=`echo $linha | cut -d : -f 3`

		mkdir $pasta
		chown $dono $pasta
		chgrp $grupo $pasta
	done
fi
