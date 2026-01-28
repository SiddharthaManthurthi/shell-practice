#! /bin/bash
NUM1=10
NUM2=20
SUM=$((NUM1 + NUM2))
echo the sum is $SUM

## Array means list of items
FRUITS=("Apple" "Banana" "Orange" "Grapes")
echo "Fruits List: ${FRUITS[@]}"
echo "First Fruit: ${FRUITS[0]}"
echo "Second Fruit: ${FRUITS[1]}"
