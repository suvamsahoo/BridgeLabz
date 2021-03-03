#!/bin/bash -x

read -p "Enter 1st number: " a;
read -p "Enter 2nd number: " b;
read -p "Enter 3rd number: " c;

num1=$(($a+$b*$c));
num2=$(($a%$b+$c));
num3=$(($c+$a/$b));
num4=$(($a*$b+$c));

echo "All numbers are $num1 , $num2 , $num3 , $num4";
arrayOfNumbers=($num1 $num2 $num3 $num4);
max=${arrayOfNumbers[0]};
min=${arrayOfNumbers[0]};

for n in "${arrayOfNumbers[@]}"
do
  if [[ "$n" -gt $max ]];
  then
      max="$n"
  fi

 if [[ "$n" -lt $min ]];
  then
      min="$n"
  fi
done

echo "Max number is $max"
echo "Min number is $min"

