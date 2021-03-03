#!/bin/bash -x

read -p "Enter 1st num: " num1;
read -p "Enter 2nd num: " num2;
read -p "Enter 3rd num: " num3;
read -p "Enter 4th num: " num4;
read -p "Enter 5th num: " num5;

arrayOfNum=($num1 $num2 $num3 $num4 $num5)
max=${arrayOfNum[0]}
min=${arrayOfNum[0]}

for n in "${arrayOfNum[@]}"
do
  if [[ "$n" -gt "$max" ]]; 
  then
      max="$n"
  fi

  if [[ "$n" -lt "$min" ]];
  then
      min="$n"
  fi
done

echo "Max number is $max"
echo "Min number is $min"


