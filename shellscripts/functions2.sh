#!/bin/bash -x

myFunc()
{
	echo "I was called as : $@"
	x=2
}

echo "Script was called with $@"
x=1
echo "x is $x"
myFunc 1 2 3
echo "x is $x"
