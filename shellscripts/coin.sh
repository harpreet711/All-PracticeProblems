##!/bin/bash -x
headcount=0
tailcount=0
while [ $headcount -ne 11 -a $tailcount -ne 11 ]
do
	x=$(( 0+ RANDOM % 2));
	if [ $x -eq 0 ]
	then
        	echo "Heads"
		((headcount++))
	else
        	echo "Tails"
		((tailcount++))
	fi
done

if [ $headcount -eq 11 ] 
then
       echo "Heads wins"
else
       echo "Tails wins"
fi
