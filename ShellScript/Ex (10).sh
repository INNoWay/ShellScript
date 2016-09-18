#!/bin/bash
#

clear
nome=$1
opcao=$2

if [ $opcao = 'adicionar' ]
then
	useradd $nome
	echo "Usuario adicionado: $nome"
elif [ $opcao = 'remover' ]
then 
	userdel $nome
	echo "Usuario removido: $nome"
else
	echo "Opcao invalida"
fi

