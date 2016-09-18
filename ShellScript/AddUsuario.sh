#!/bin/bash

num_linhas=`cat $1 | wc -l`
l=$num_linhas
for (( i = 1 ; i <= $num_linhas ; i = i + 1 ))
do
	linha=`tail -n $l $1 | head -n 1`
	let l--

	usuario=`echo $linha | cut -d : -f 1`
	senha=`echo $linha | cut -d : -f 2`

	useradd $usuario
	echo -e "$senha\n$senha" | passwd $usuario 2> /dev/null
done
