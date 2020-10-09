##!/bin/bash -x

c=1
for i in {1..10}
do
  x=$(( 100 + RANDOM % 999))
  arr[((c++))]=$x
done
echo ${arr[@]}

