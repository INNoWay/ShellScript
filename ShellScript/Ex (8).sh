#!/bin/bash


ip=$1
resp=1
tentativas=1

while [ $resp -ne 0  ]
do
	ping -c 3 $ip
	if [ $? -ne 0 ] ; then
		let tentativas++
		resp=$?
	else
		clear
		echo "Ping realizado com sucesso!"
		datahora=`date +%d/%m/%Y-%H:%M`
		echo "Data / Hora: $datahora"
		echo "Foram realizadas $tentativas tentativas"
		resp=0
	fi
done
