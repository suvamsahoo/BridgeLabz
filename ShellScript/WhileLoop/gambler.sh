#!/bin/bash -x

gamblerMoney=100
isBet=1

betTimes=0
betWons=0
betLose=0

while [ $gamblerMoney -gt 0 ] && [ $gamblerMoney -lt 200 ] && [ $isBet -eq 1 ]
do
  flip_coin=$((RANDOM%2))
	if [ $flip_coin -eq 0 ]
	then
		betWons=$((betWons+1))
                #gamblerMoney=$((gamblerMoney+1))
	else
		gamblerMoney=$((gamblerMoney-1))
		betLose=$((betLose+1))
	fi
		betTimes=$((betTimes+1))
done

echo "Money: $gamblerMoney , BetTimes: $betTimes, Won: $betWons,Lose: $betLose"
