##!/bin/bash -x
a=`echo $(( 100+ RANDOM % 999))`;
b=`echo $(( 100+ RANDOM % 999))`;
c=`echo $(( 100+ RANDOM % 999))`;
d=`echo $(( 100+ RANDOM % 999))`;
e=`echo $(( 100+ RANDOM % 999))`;
echo "$a"
echo "$b"
echo "$c"
echo "$d"
echo "$e"
if [ $a -gt $b -a $a -gt $c -a $a -gt $d -a $a -gt $e ];
then	echo "$a is largest integer"
elif [ $b -gt $a -a $b -gt $c -a $b -gt $d -a $b -gt $e ];
then	echo "$b is largest integer"
elif [ $c -gt $a -a $c -gt $b -a $c -gt $d -a $c -gt $e ];
then	echo "$c is largest integer"
elif [ $d -gt $a -a $d -gt $b -a $d -gt $c -a $d -gt $e ];
then        echo "$d is largest integer"
elif [ $e -gt $a -a $e -gt $b -a $e -gt $c -a $e -gt $d ];
then
        echo "$e is largest integer"
else
	echo "Sorry cannot guess number"
fi
s=$a
if [ $b -lt $s ]
then
s=$b
fi
if [ $c -lt $s ]
then
s=$c
fi
if [ $d -lt $s ]
then
s=$d
fi
if [ $e -lt $s ]
then
s=$e
fi
echo $s is smallest integer
