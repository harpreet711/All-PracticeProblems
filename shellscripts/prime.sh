#!/bin/bash -x
read -p "Enter start number: " a
read -p "Enter end number: " b
for (( counter=a; counter<=b; counter++ ))
do
        echo "$counter"

for((i=2; i<=counter/2; i++))
do
  if [ $((counter%i)) -eq 0 ]
  then
    echo "$counter is not a prime number."
    exit
  fi
done
echo "$counter is a prime number."
done
