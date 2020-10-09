##!/bin/bash -x
y=1
for i in 1 2 3 4 5
do
  read -p "enter values $i: " x
  arr[((y++))]=$x
done
echo ${arr[@]}

a=$((arr[1]+arr[2]+arr[3]))
b=$((arr[1]+arr[2]+arr[4]))
c=$((arr[1]+arr[2]+arr[5]))
d=$((arr[1]+arr[3]+arr[4]))
e=$((arr[1]+arr[3]+arr[5]))
f=$((arr[1]+arr[4]+arr[5]))
g=$((arr[2]+arr[3]+arr[4]))
h=$((arr[2]+arr[3]+arr[5]))
i=$((arr[3]+arr[4]+arr[5]))


if [ $a -eq 0 ]
then
       echo "(${arr[1]} ${arr[2]} ${arr[3]}) Sum is ZERO"
fi
if [ $b -eq 0 ]
then
       echo "(${arr[1]} ${arr[2]} ${arr[4]}) Sum is ZERO"
fi
if [ $c -eq 0 ]
then
       echo "(${arr[1]} ${arr[2]} ${arr[5]}) Sum is ZERO"
fi
if [ $d -eq 0 ]
then
       echo "(${arr[1]} ${arr[3]} ${arr[4]}) Sum is ZERO"
fi
if [ $e -eq 0 ]
then
       echo "(${arr[1]} ${arr[3]} ${arr[5]}) Sum is ZERO"
fi
if [ $f -eq 0 ]
then
       echo "(${arr[1]} ${arr[4]} ${arr[5]}) Sum is ZERO"
fi
if [ $g -eq 0 ]
then
       echo "(arr[2]+arr[3]+arr[4]) Sum is ZERO"
fi
if [ $h -eq 0 ]
then
       echo "(${arr[2]} ${arr[3]} ${arr[5]}) Sum is ZERO"
fi
if [ $i -eq 0 ]
then
       echo "(${arr[3]} ${arr[4]} ${arr[5]}) Sum is ZERO"
fi
