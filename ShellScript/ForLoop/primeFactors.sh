#!/bin/bash -x

read -p "Enter the number: " number

for (( i=2; i<=$number; ))
do
	if [ $((number%i)) -eq 0 ]
	then
		number=$((number/i))
		echo "$i"
	else
		((i++))
	fi
done
