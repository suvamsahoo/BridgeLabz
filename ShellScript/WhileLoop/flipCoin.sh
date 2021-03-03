#!/bin/bash -x

head=1;
tail=0;
headCount=0;
tailCount=0;
WinsTimes=11;

while [ $headCount -lt $WinsTimes -a $tailCount -lt $WinsTimes ]
do
  flip=$((RANDOM%2));
  case $flip in
         $head)
              ((headCount++))
         ;;
         $tail)
              ((tailCount++))
         ;;
         *)
         echo "ERROR"
  esac
done

if [ $headCount -eq $WinsTimes ];
then
    echo "Head wins"
elif [ $tailCount -eq $WinsTimes ];
then
    echo "Tail wins"
else
    echo "Tie"
fi
