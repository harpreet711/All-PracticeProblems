#!/bin/bash
read -p "Enter number between 1 to 100: " num
if [ $num -gt 1 ] || [ $num -le 100 ]
then
	n=0
	high=100
	low=1
	while [ $n -ne $num ]
	do
		div=$(( high + low ))
		mid=$(( div / 2 ))
		if [ $num -eq $mid ]
		then
			n=$num
			echo "magic num found $num"
		elif [ $num -le $mid ]
		then
			echo "num is less"
			high=$mid
		elif [ $num -gt $mid ]
		then echo "num is greater"
		low=$mid
		fi
	done
else
	echo "Enter number between 1-100"
fi
