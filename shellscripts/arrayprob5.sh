echo "Enter range between 0-100"
read -p "enter first no: " a
read -p "enter second no: " b

if [[ $a -lt 0 || $a -gt 100 ]]
then
    echo "enter range between 0-100"
exit 1
fi
if [[ $b -lt a || $b -gt 100 ]]
then
    echo "enter number greater than first number"
exit 1
fi

c=0
for((i=a; i<=b; i++))
do
  if [ $((i % 11)) -eq 0 ]
    then
      arr[((c++))]=$i
  fi
done
echo ${arr[@]}
