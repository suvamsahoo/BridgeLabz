#!/bin/bash

read -p "Enter limits of random number: " limitOfRandoms;

function getRandomNum() {
 num=$((RANDOM%900+100));
 echo $num #function return
}

for (( i=0; i<$limitOfRandoms; i++ ))
do
  randomNumsArray[i]="$( getRandomNum )" #function calling
done
echo "All 10 random numbers are: ${randomNumsArray[@]}"
totalElements=${#randomNumsArray[@]};

#sort-:
function sort() {
 for (( i=0; i<$totalElements; i++ ))
 {
    for (( j=0; j<$totalElements-1; j++))
    {
       if [ ${randomNumsArray[j+1]} -lt ${randomNumsArray[j]} ];
       then
           temp=${randomNumsArray[j]}
           randomNumsArray[j]=${randomNumsArray[j+1]}
           randomNumsArray[j+1]=$temp
       fi
     }
 }
 echo "Sorting array elements: ${randomNumsArray[@]}" 
}

sort ${randomNumsArray[@]} #function calling

echo "Second smallest number is: ${randomNumsArray[1]}"
echo "Second largest number is: ${randomNumsArray[$totalElements-2]}"

