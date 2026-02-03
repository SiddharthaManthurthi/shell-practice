#! /bin/bash
count=1
while [ $count -le 10 ]
do
    echo "Count is: $count"
    sleep 1
    #increment the count
    ((count++))
done