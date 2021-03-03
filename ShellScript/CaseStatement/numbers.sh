#!/bin/bash -x

read -p "Enter number like 1,10,100,1000,..: " num;

case $num in
       1)
         echo "one"
         ;;
       10)
         echo "ten"
         ;;
       100)
         echo "hundred"
         ;;
       1000)
         echo "thousand"
         ;;
       10000)
         echo "ten thousand"
         ;;
       *)
         echo "error"
         ;;
esac
