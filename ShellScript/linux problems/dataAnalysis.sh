#!/bin/bash

#(i)
echo "EmployeeName and TotalPay who has BasePay greater than 10000"
awk '{ if ($4 > 10000) { print $2 " " $7 } }' data.csv
echo "----------------------------------------------------------"

#(ii)
echo "TotalPay of employees whose jobtitle is CAPTAIN"
cat data.csv | grep -i captain | awk '{sum+=$7}END{print sum}'
echo "----------------------------------------------------------"

#(iii)
echo "print JobTitle and Overtimepay who has Overtimepay is between 7000 and 10000"
awk '{ if (($5 >= 7000) && ($5 <= 10000)) { print $3 " " $5 } }' data.csv
echo "----------------------------------------------------------"

#(iv)
Total=`cat data.csv | awk '{sum+=$4}END{print sum}'`
Average=`cat data.csv | awk '{sum+=$4}END{print sum/(NR-1)}'`
echo "Total BasePay is $Total and it's average $Average"
