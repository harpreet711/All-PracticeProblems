##!/bin/bash -x
one=0
two=0
three=0
four=0
five=0
six=0
while [ $one -ne 10 -a $two -ne 10 -a $three -ne 10 -a $four -ne 10 -a $five -ne 10 -a $six -ne 10 ]
do
x=$(( 1+ RANDOM % 6))

if [ $x -eq 1 ]
then
	((one++))
elif [ $x -eq 2 ]
then
	((two++))
elif [ $x -eq 3 ]
then
        ((three++))
elif [ $x -eq 4 ]
then
        ((four++))
elif [ $x -eq 5 ]
then
        ((five++))
else
	((six++))
fi
done

declare -A diceValue
diceValue[one]=$one
diceValue[two]=$two
diceValue[three]=$three
diceValue[four]=$four
diceValue[five]=$five
diceValue[six]=$six

echo "1 : " ${diceValue[one]}
echo "2 : " ${diceValue[two]}
echo "3 : " ${diceValue[three]}
echo "4 : " ${diceValue[four]}
echo "5 : " ${diceValue[five]}
echo "6 : " ${diceValue[six]}

if [ ${diceValue[one]} -eq 10 ]
then
       echo "1 is rolled 10 times"
elif [ ${diceValue[two]} -eq 10 ]
then
       echo "2 is rolled 10 times"
elif [ ${diceValue[three]} -eq 10 ]
then
       echo "3 is rolled 10 times"
elif [ ${diceValue[four]} -eq 10 ]
then
       echo "4 is rolled 10 times"
elif [ ${diceValue[five]} -eq 10 ]
then
       echo "5 is rolled 10 times"
else
       echo "6 is rolled 10 times"
fi
