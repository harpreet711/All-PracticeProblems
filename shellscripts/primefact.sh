read -p "enter num = " num
r=$num
echo "list"
for((i=2; i<=$r; i++ ))
do
while [ $((num%$i)) == 0]
do
echo $i
num=$((num/$i
