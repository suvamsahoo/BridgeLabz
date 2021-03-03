#!/bin/bash -x

read -p "Enter single digit number: " num

if [ $num -eq 0 ];
then
    echo "zero";
elif [ $num -eq 1 ];
then
    echo "one";
elif [ $num -eq 2 ];
then
    echo "two";
elif [ $num -eq 3 ];
then
    echo "three";
elif [ $num -eq 4 ];
then
    echo "four";
elif [ $num -eq 5 ];
then
    echo "five";
elif [ $num -eq 6 ];
then
    echo "six";
elif [ $num -eq 7 ];
then
    echo "seven";
elif [ $num -eq 8 ];
then
    echo "eight";
else
    echo "nine"
fi
