##!/bin/bash -x
y=1
for z in 1 2 3 4 5
do
  read -p "enter values $z: " x
  arr[((y++))]=$x
done
echo ${arr[@]}


for((i=0;i<3;i++))
do
	for((j=$i+1;j<4;j++))
	do
		for((k=$j+1;k<5;k++))
		do
		if [[ ${arr[$i]}+${arr[$j]}+${arr[$k]} -eq 0 ]]
		then
			echo "triplet: ${arr[$i]},${arr[$j]},${arr[$k]}"
		fi
		done
	done
done
