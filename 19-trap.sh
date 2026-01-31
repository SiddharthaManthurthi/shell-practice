#! /bin/bash
set -e #ERR
Trap 'echo "Error occurred at line $LINENO, COMMAND : $BASH_COMMAND"' ERR

echo "Hello world"
echo "Iam learning trap in bash scripting"
echoo  "This will cause an error here"
echo  " No error here"