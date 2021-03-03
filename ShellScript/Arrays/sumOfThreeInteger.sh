#!/bin/bash -x

numberContainerArr=(2 -1 -1 2 -1);
echo "All elements are: ${numberContainerArr[@]}";
arrayLength=${#numberContainerArr[@]};

for(( i=0; i<arrayLength; i++ ))
do
  for(( j=i+1; j<arrayLength; j++ ))
  do
    for(( k=j+1; k<arrayLength; k++ ))
    do
      if [ $(($((numberContainerArr[i]))+$((numberContainerArr[j]))+$((numberContainerArr[k])))) -eq 0 ];
      then
          echo "${numberContainerArr[i]} ${numberContainerArr[j]} ${numberContainerArr[k]}"
      fi
    done
  done
done
