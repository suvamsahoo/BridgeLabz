#!/bin/bash -x

for(( i=1; i<100; i++))
do
  number=$i;
  x=$(($number%10));
  y=$(($number/10));

 if [ $x -eq $y ];
 then
     array[number]=$number;
 fi
done

echo "Digits are repeated twice in this number ${array[@]} "

