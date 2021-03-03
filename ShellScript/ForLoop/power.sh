#!/bin/bash 

read -p "Enter the nth number:"  number
counter=0
result=0

while (($counter<= $number &&  $result <= $((2**number))))
do
	result=$((2**counter))
	echo $result

	counter=$((counter+1))
done
