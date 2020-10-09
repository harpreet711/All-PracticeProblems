##!/bin/bash -x
c=1
for i in `seq 1 50`
do
	month=$((1+RANDOM%12))
	arrMonth[((c++))]=$month
	year=$((1+RANDOM%2))

	if [ $year -eq 1 ]
	then
		year='1992'
	else
		year='1993'
	fi
	echo "$month / $year"
done
echo ${arrMonth[@]}
one=0
two=0
three=0
four=0
five=0
six=0
seven=0
eight=0
nine=0
ten=0
eleven=0
twelve=0
for i in `seq 1 50`
do
	if [ ${arrMonth[i]} -eq 1 ]
	then
		((one++))
	elif [ ${arrMonth[i]} -eq 2 ]
	then
		((two++))
	elif [ ${arrMonth[i]} -eq 3 ]
        then
                ((three++))
	elif [ ${arrMonth[i]} -eq 4 ]
        then
                ((four++))
	elif [ ${arrMonth[i]} -eq 5 ]
        then
                ((five++))
        elif [ ${arrMonth[i]} -eq 6 ]
        then
                ((six++))
        elif [ ${arrMonth[i]} -eq 7 ]
        then
                ((seven++))
	elif [ ${arrMonth[i]} -eq 8 ]
        then
                ((eight++))
        elif [ ${arrMonth[i]} -eq 9 ]
        then
                ((nine++))
        elif [ ${arrMonth[i]} -eq 10 ]
        then
                ((ten++))
	elif [ ${arrMonth[i]} -eq 11 ]
        then
                ((eleven++))
        elif [ ${arrMonth[i]} -eq 12 ]
        then
                ((twelve++))
	fi
done

declare -A monthValue
monthValue[1]=$one
monthValue[2]=$two
monthValue[3]=$three
monthValue[4]=$four
monthValue[5]=$five
monthValue[6]=$six
monthValue[7]=$seven
monthValue[8]=$eight
monthValue[9]=$nine
monthValue[10]=$ten
monthValue[11]=$eleven
monthValue[12]=$twelve

echo "month and number of birthdays in each month"
echo "1.Jan   : " ${monthValue[1]}  "Birthdays"
echo "2.Feb   : " ${monthValue[2]}  "Birthdays"
echo "3.March : " ${monthValue[3]}  "Birthdays"
echo "4.April : " ${monthValue[4]}  "Birthdays"
echo "5.May   : " ${monthValue[5]}  "Birthdays"
echo "6.Jun   : " ${monthValue[6]}  "Birthdays"
echo "7.July  : " ${monthValue[7]}  "Birthdays"
echo "8.Aug   : " ${monthValue[8]}  "Birthdays"
echo "9.Sept  : " ${monthValue[9]}  "Birthdays"
echo "10.Oct  : " ${monthValue[10]} "Birthdays"
echo "11.Nov  : " ${monthValue[11]} "Birthdays"
echo "12.Dec  : " ${monthValue[12]} "Birthdays"
