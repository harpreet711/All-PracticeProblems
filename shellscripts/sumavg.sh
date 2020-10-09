#!/bin/bash -x
v=`echo $(( 10+ RANDOM % 99))`;
w=`echo $(( 10+ RANDOM % 99))`;
x=`echo $(( 10+ RANDOM % 99))`;
y=`echo $(( 10+ RANDOM % 99))`;
z=`echo $(( 10+ RANDOM % 99))`;
sum=$(( $v + $w + $x + $y + $z))
echo $sum
N=5
avg=$(( $sum / $N | bc -l))
echo $avg
