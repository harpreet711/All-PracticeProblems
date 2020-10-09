#!/bin/bash
echo -n "Please enter the value" :
read value
fah=$(echo "($value * 1.8)+32" |bc)
echo The Fahrenheit equivalent of $value is $fah
