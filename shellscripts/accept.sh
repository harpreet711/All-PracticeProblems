
read -p "Enter First No: " a
read -p "Enter Second No: " b
read -p "Enter Third No: " c

w=$(( a + b * c ))
x=$(( a % b + c ))
y=$(( c + a / b ))
z=$(( a * b + c ))
echo "$w $x $y $z"

if [ $w -gt $x ] -a [ $w -gt $y ] -a [ $w -gt $z ];
then
        echo "$w is largest integer"
elif [ $x -gt $w ] -a [ $x -gt $y ] -a [ $x -gt $z ];
then
        echo "$x is largest integer"
elif [ $y -gt $w ] -a [ $y -gt $x ] -a [ $y -gt $z ];
then
        echo "$y is largest integer"
elif [ $z -gt $w ] -a [ $z -gt $x ] -a [ $z -gt $y ];
then
        echo "$z is largest integer"
fi

s=$w
if [ $w -lt $s ]
then
s=$x
fi
if [ $y -lt $s ]
then
s=$y
fi
if [ $z -lt $s ]
then
s=$z
fi

echo $s is smallest integer
