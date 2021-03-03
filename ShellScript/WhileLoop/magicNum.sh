#!/bin/bash -x

read -p "Enter a number in between 1 to 100: " num;
temp=$num;

while [[ $temp -gt 9 ]]
do
  sum=0;
  while [[ $temp -ne 0 ]]
  do
    rem=$(($temp%10))
    sum=$(($sum+$rem))
    temp=$(($temp/10))
  done
  temp=$sum
done

if [ $sum -eq 1 ];
then
    echo "$num is magic number"
else
    echo "$num is not a magic number."
fi
