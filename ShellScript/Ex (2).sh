#!/bin/bash

echo "Digite o 1º Número:"
read num1

echo "Digite o 2º Número:"
read num2

echo "Digite o 3º Número:"
read num3

echo "Digite o 4º Número:"
read num4

media=`expr \( $num1 + $num2 + $num3 + $num4 \) / 4 `

echo "A média calculada é: $media"
