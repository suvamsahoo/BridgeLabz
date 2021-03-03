#!/bin/bash -x

randomNum1=$((RANDOM%6+1));
randomNum2=$((RANDOM%6+1));

addTwoRandomNum=$(($randomNum1+$randomNum2))
echo $addTwoRandomNum

