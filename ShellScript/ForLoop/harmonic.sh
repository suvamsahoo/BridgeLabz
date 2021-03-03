#!/bin/bash -x

read -p "Enter number to get it's harmonic: " num;
x=1;
sum=0;

for (( i=1; i<=$num; i++ ))
do
  z=`echo $x $i | awk '{print $1/$2}'`
  sum=`echo $sum $z | awk '{print $1+$2}'`
done

echo "Harmonic of $num is $sum"
