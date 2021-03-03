#!/bin/bash -x

index=0;

read -p "Enter the number: " number

for (( i=2; i<=$number; ))
do
	if [ $((number%i)) -eq 0 ]
	then
		number=$((number/i))
		echo "$i"

                array[index]=$i
                ((index++))
	else
		((i++))
	fi
done

echo "All prime factors are: ${array[@]}"
