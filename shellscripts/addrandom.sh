#!/bin/bash -x
x=`echo $(( 1+ RANDOM % 6))`;
y=`echo $(( 1+ RANDOM % 6))`;
z=$(( $x + $y))
echo $z
