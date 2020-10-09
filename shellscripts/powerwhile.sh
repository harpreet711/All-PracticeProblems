echo "Enter a Number"
read n
i=0
while [ $i -le $n ]
do
    res=$(( 2 ** $i))
    echo " 2 ^ $i = $res"
    i=`expr $i + 1`
done
