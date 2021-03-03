#!/bin/bash -x
read -p "Enter unit like feet-inch, feet-meter, inch-feet meter-feet: " unit;

case $unit in
     feet-inch)
              read -p "Enter feet value: " x;
              y=12; # 1 feet = 12 inch
              a=feet;
              b=inch;
              ;;

     feet-meter)
              read -p "Enter feet value: " x;
              y=0.3048; # 1 feet = 0.3048 meter
              a=feet;
              b=meter;
              ;;

      inch-feet)
              read -p "Enter inch value: " x;
              y=0.0833333; # 1 inch = 0.0833333 feet
              a=inch;
              b=feet;
              ;;

     meter-feet)
              read -p "Enter inch value: " x;
              y=3.28084; # 1 meter = 3.28084 feet
              a=meter;
              b=feet;
              ;;

             *)
              echo "ERROR check again "
              ;;
esac

result=`echo $x $y | awk '{print $1 * $2}'`
echo "$x $a is equal to $result $b."


