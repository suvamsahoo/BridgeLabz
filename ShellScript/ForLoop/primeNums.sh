#!/bin/bash -x

read -p "Enter lower bound: " startRangeNum;
read -p "Enter upper bound: " endRangeNum;
temp=0;

for (( i=$startRangeNum; i<=$endRangeNum; i++ ))
do
  for (( j=2; j<=$i-1; j++ ))
  do
    if [ $(($i%$j)) -eq 0 ];
    then
        ((temp++))
    fi
  done


  if [ $temp -eq 0 ];
  then
      echo $i;
  else
      temp=0
  fi
done
