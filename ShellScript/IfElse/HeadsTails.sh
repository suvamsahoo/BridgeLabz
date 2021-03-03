#!/bin/bash -x

Heads=0;
Tails=1;
coinFlip=$((RANDOM%2));

if [ $coinFlip -eq $Heads ];
then
    echo "Heads!"
else
    echo "Tails!"
fi
