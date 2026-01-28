#! /bin/bash
NUMBER=$1

#-gt means greater than
#-lt means less than
#-eq means equal to
# -ne means not equal to
if [ $NUMBER -gt 20 ]; then
echo "Given number : $NUMBER is greater than 20"
else
echo "Given number :$NUMBER is less than 20"
fi