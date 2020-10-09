##!/bin/bash -x
c=1
for i in {1..10}
do
  x=$(( 100+ RANDOM % 900))
  arr[((c++))]=$x
done
echo ${arr[@]}
#sorting
for (( i = 1; i <= 10 ; i++ ))
do
for (( j = $i; j <= 10; j++ ))
do
if [[ ${arr[i]} -gt ${arr[j]} ]]
then
t=${arr[i]}
arr[$i]=${arr[j]}
arr[$j]=$t
fi
done
done
echo "Sorted Numbers "
for (( i=1; i <= 10; i++ ))
do
echo ${arr[i]}
done
echo "Second smallest element is ${arr[2]}"
echo "Second largest element is ${arr[9]}"
