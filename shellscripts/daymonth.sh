
read -p "enter day: " x
echo $x
read -p "enter month: " y
echo $y

if [[ $x -gt 1 && $x -le 31 ]]
then
       	echo "true"
else
       	echo "False"
fi

if [[ $y -ge 3 && $y -le 6 ]]
then
        echo "true"
else
        echo "False"
fi

