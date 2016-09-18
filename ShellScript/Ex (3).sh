#!/bin/bash

#Pega o a quantidade de parametros informados através da variavel $#

#Verifica se as variaveis foram iniciadas. Em caso negativo, inicia as variaveis com 0

qtde_numeros=$#

if [ -z $1 ] ; then
	num1=0 
else
	num1=$1
fi

if [ -z $2 ] ; then
	num2=0 
else
	num2=$2
fi

if [ -z $3 ] ; then
	num3=0 
else
	num3=$3
fi


if [ -z $4 ] ; then
	num4=0 
else
	num4=$4
fi

if [ -z $5 ] ; then
	num5=0 
else
	num5=$5
fi


if [ -z $6 ] ; then
	num6=0 
else
	num6=$6
fi

if [ -z $7 ] ; then
	num7=0 
else
	num7=$7
fi

if [ -z $8 ] ; then
	num8=0
else
	num8=$8 
fi

if [ -z $9 ] ; then
	num9=0 
else
	num9=$9 
fi


#Calcula a média
media=`expr \( $num1 + $num2 + $num3 + $num4 + $num5 + $num6 + $num7 + $num8 + $num9 \) / $qtde_numeros`

echo "A média dos $# números informados é $media"
