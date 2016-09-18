#!/bin/bash

echo "Digite o nome do usuario"
read nome

var=`grep $nome /etc/passwd | cut -d : -f 6`

ls -l $var 



