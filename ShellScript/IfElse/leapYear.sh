#!/bin/bash -x

read -p "Enter Year: " year;
x=$(($year%4));
y=$(($year%100));
z=$(($year%400));

if [ $x -eq 0 -a $y -ne 0 -o $z -eq 0 ];
then
    echo "$year is leap year";
else
    echo "$year is not leap year";
fi
