#!/bin/bash -x

read -p "Enter degree in Celsius: " degc;
read -p "Enter degree in Fahreheit: " degf;

function getF() {
 echo $(( ($1*9/5)+32 ))
}

function getC() {
 echo $(( ($1-32)*5/9 ))

}

degF="$( getF $degc )"
degC="$( getC $degf )"

echo "Faherenhiet: $degF and Celsius: $degC"
