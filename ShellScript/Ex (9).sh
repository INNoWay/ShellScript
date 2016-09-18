#!/bin/bash

echo "O que esta sendo impresso?"

for (( i=1; i<=5; i++))
do
	for (( j=1; j<=i; j++ ))
	do
		echo -n "$j"
	done
	echo ""
done

