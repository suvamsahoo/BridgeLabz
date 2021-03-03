#!/bin/bash -x

read -p "Enter number like 1,10,100,..: " num

if [ $num -eq 1 ];
then
    echo "one";
elif [ $num -eq 10 ];
then
    echo "ten";
elif [ $num -eq 100 ];
then
    echo "hundred";
elif [ $num -eq 1000 ];
then
    echo "thousand";
elif [ $num -eq 10000 ];
then
    echo "ten thousand";
elif [ $num -eq 100000 ];
then
    echo "one hundred thousand";
else
    echo "error"
fi
