#!/bin/bash -x

read -p "Enter a number: " num;
temp=0;

for (( i=2; i<=$num-1; i++ ))
do
  if [ $(($num%$i)) -eq 0 ];
  then
      ((temp++)) #temp = temp + 1
      echo $temp; #print update temp value
  fi
done

if [ $temp -gt 0 ];
then
    echo "$num is not a prime number";
else
    echo "$num is prime number"
fi
