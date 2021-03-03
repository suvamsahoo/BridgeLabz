#!/bin/bash 
echo "Print 10 random numbers: ";
for (( i=0; i<10; i++ ))
do
 randomNumsAarray[i]=$((RANDOM%900+100)) #generates 3 digit number
done
echo "All 10 random numbers are: ${randomNumsAarray[@]}"

#Max-:
largest=${randomNumsAarray[0]}
secondLargest=${randomNumsAarray[0]}

for (( i=0; i<10; i++ ))
do
  if [ ${randomNumsAarray[i]} -gt $largest ];
  then
      secondLargest=$largest;
      largest=${randomNumsAarray[i]}
  elif [ ${randomNumsAarray[i]} -gt $secondLargest -a ${randomNumsAarray[i]} -lt $largest ]
  then
      secondLargest=${randomNumsAarray[i]}
  fi
done
echo "Largest number is $largest & second largest number is $secondLargest"

#Min-:
smallest=${randomNumsAarray[0]}
secondSmallest=${randomNumsAarray[0]}

for (( i=0; i<10; i++ ))
do
  if [ ${randomNumsAarray[i]} -lt $smallest ];
  then
      secondSmallest=$smallest;
      smallest=${randomNumsAarray[i]}
  elif [ ${randomNumsAarray[i]} -lt $secondSmallest -a ${randomNumsAarray[i]} -gt $smallest ]
  then
      secondSmallest=${randomNumsAarray[i]}
  fi
done
echo "Smallest number is $smallest & second smallest number is $secondSmallest"
