##!/bin/bash -x

inch=12
meter=3.2808
echo "enter option"
echo "1. Feet to Inch"
echo "2. Feet to Meter"
echo "3. Inch to Feet"
echo "4. Meter to Feet"
read -p "enter option: " o
read -p "enter number: " n
case $o in
1) fti=$(( $n * $inch ))
   echo "Feet to inch = $fti" ;;
2) itf=$(( $n / $inch ))
   echo "Inch to feet = $itf" ;;
3) ftm=$(awk 'BEGIN {print '$n' / '$meter'}')
   echo "Feet to meter = $ftm" ;;
4) mtf=$(awk 'BEGIN {print '$n' * '$meter'}')
   echo "Meter to feet = $mtf" ;;
esac
