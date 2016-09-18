#!/bin/bash


if ! [ $1 ]
then
	echo "O endereço IP não foi informado!"
	exit 1
elif ! [ $2 ]
then
	echo "A mascara de subrede não foi informada!"
	exit 2
elif ! [ $3 ]
then
	echo "O gateway não foi informado!"
	exit 3
elif ! [ $4 ]
then
	echo "O 1º DNS não foi informado!"
	exit 4
elif ! [ $5 ]
then
	echo "O 2º DNS não foi informado!"
	exit 5
else
	#ifconfig eth0 $1 $2 up
	#route add default gw $3
	#echo "nameserver $4" > /etc/resolv.conf
	#echo "nameserver $5" >> /etc/resolv.conf
	echo "Configurações realizadas com sucesso!"
	exit 0
fi
