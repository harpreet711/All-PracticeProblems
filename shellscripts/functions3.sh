function myFunc() {
        echo $1
}

if [ $( myFunc $((RANDOM%2)) ) -eq 1 ]
then
        echo "success"
else
        echo "failure"
fi
