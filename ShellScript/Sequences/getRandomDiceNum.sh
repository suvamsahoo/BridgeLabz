#!/bin/bash -x

#random number between 1 to 6 dice
randomNumber=$((RANDOM%6+1))
echo "Random dice number between 1 to 6 is: " $randomNumber
