#!/bin/bash -x

#A) TO CONVERT INCH TO FEET-:
Inches=42;
yourFT=$(($Inches/12)); #1ft = 12 in
yourIN=$(($Inches%12));
echo "Your height is $yourFT foot $yourIN inch."

#B) TO FEET TO METER CONVERSION-:
length=60
breadth=40
mul=$(($length*$breadth))
meter=`echo $mul | awk '{print $1 * 0.3048 * 0.3048}'`
echo "$length feet length & $breadth feet breadth is equal to $meter meters."

#C) TO CONVERT AREA INTO ACRES-:
area=`echo $meter | awk '{print $1/4047 * 25}'`
echo "Area of 25 plts in acres are $area "

