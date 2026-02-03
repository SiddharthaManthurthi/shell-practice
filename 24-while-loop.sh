#! /bin/bash
count=1
while [ $count -le 10 ]
do
    echo "Count is: $count"
    sleep 1
    #increment the count
    ((count++))
done

while IFS= read -r line;do
    echo "Line Content: $line"
done < ./21-script-1.sh #input which file to read line by line