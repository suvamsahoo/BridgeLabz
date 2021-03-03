#!/bin/bash

TotalIndividuals=50
declare -A BirthDay
echo "Birthday month and year of $TotalIndividuals individuals are: "
for(( individual = 1; individual <= TotalIndividuals; individual++ ))
do
    BirthMonth=$((RANDOM%12+1))
    BirthYear=$((RANDOM%2+92))
    echo "Individual $individual has birthday in month $BirthMonth and year $BirthYear "
    BirthDay[$BirthMonth]+=" ${individual}"
done

for month in ${!BirthDay[@]}
do
    echo "Individuals who are having birthday in month $month are: "
    for individual in ${BirthDay[$month]}
    do
        echo -n "$individual ";
    done
 echo
done
