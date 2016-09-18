#!/bin/bash
#
#4. Desenvolva um script que informe a média de todos os números pares compreendidos entre dois números informados pelo usuário por parâmetro;
#
clear
let numero1=$1
let numero2=$2
while [ $numero1 -le $numero2 ]
do
	if [ $(($numero1%2==0)) ]
	then
	let soma=soma+numero1
	let cont=cont+1
	fi
	numero1=$(( numero1+1 ))
done
media=$( echo "$soma/$cont" |bc)
echo "Media dos numeros pares é: $media"
