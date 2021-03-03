#!/bin/bash -x

read -p "Enter single digit number: " num

if [ $num -eq 0 ];
then
    echo "sunday";
elif [ $num -eq 1 ];
then
    echo "monday";
elif [ $num -eq 2 ];
then
    echo "tuesday";
elif [ $num -eq 3 ];
then
    echo "wednesday";
elif [ $num -eq 4 ];
then
    echo "thursday";
elif [ $num -eq 5 ];
then
    echo "friday";
else
    echo "saturday"
fi
