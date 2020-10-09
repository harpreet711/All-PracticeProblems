##!/bin/bash -x
initial=100
count=0
win=0
bet=1
while [ $initial -le 200 ] && [ $initial -gt 0 ]
do
	RANDOM=$$
	winLoss=$((1+RANDOM%2))
	if [ $winLoss -eq 1 ]
	then
		initial=$(($initial + 1))
		((win++))
	echo "$initial"
	elif [ $winLoss -eq 2 ]
	then
		initial=$(($initial - 1))
	echo "$initial"
	fi
	((count++))
done
if [ $initial -gt 200 ]
then
	echo "goal reached"
fi
