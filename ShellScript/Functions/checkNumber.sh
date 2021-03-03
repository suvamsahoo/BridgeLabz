#!/bin/bash -x
echo "Please select a number 1 or 2 or 3.";
read -p "1)Prime check 2)Check pallindrome 3) check pallindrom is prime :" choice;
#prime------------------------------------------------------------------------:
function isPrime() {
 local checkNumber=$1 #local variable
 count=0
 for ((counter=1 ; counter<=checkNumber ; counter++))
 do
	if (($checkNumber%counter==0))
	then
	   count=$((count+1))
	fi
 done

 if (($count==2)) #a number divisible only by itself and 1, is prime.
 then
     echo "The $checkNumber is prime number"
 else
     echo "The $checkNumber is not an prime number"
 fi
}
#pallindrome------------------------------------------------------------------:
function isPallindrome() {
 local temp=$1
 reverseNum=0
 while [ $temp -ne 0 ]
 do
   reverseNum=$(( temp%10+ reverseNum*10 ))
   temp=$((temp/10))
 done

 echo $reverseNum #return
}
#case------------------------------------------------------------------------:
case $choice in
	1) read -p "Enter the number to check prime: " primeCheckNum
	   isPrime $primeCheckNum;; #function calling

	2) read -p "Enter the number to check pallindrome : " pallinCheckNum
	   if [ $pallinCheckNum -eq $(isPallindrome $pallinCheckNum) ]
	   then
		echo "$pallinCheckNum is Pallindrome number"
	   else
		echo "$pallinCheckNum is not pallindrome number"
	   fi;;

	3) read -p "Check pallindrome and prime:" pallinPrimeNum
	   isPrime $(isPallindrome $pallinPrimeNum);;

	*) echo "Invalid choice";;
esac
