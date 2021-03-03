#!/bin/bash -x

read -p "Enter single digit number: " num;

case $num in
       0)
         echo "sunday"
         ;;
       1)
         echo "monday"
         ;;
       2)
         echo "tuesday"
         ;;
       3)
         echo "wednesday"
         ;;
       4)
         echo "thursday"
         ;;
       5)
         echo "friday"
         ;;
       *)
         echo "saturday"
         ;;
esac
