#!/bin/bash -x

read -p "Enter 1st two digit number: " num1
read -p "Enter 2nd two digit number: " num2
read -p "Enter 3rd two digit number: " num3
read -p "Enter 4th two digit number: " num4
read -p "Enter 5th two digit number: " num5

sum=$(($num1+$num2+$num3+$num4+$num5));
avg=$(($sum/5));
echo "All five numbers, sum is $sum and avg is $avg"

