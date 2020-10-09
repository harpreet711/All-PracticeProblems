#!/bin/bash -x
read -p "Enter Number: " n
num=0
for (( i=1; i<=n; i++ ))
do
        r=$(awk 'BEGIN {print '1'/'$i'}')
        num=$(awk 'BEGIN {print '$num' + '$r'}')
done
echo "$num"
