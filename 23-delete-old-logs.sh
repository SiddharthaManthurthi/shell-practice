#! /bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[0m"

LOGS_DIR=/home/ec2-user/app-logs
LOGS_FILE="$LOGS_DIR/$0.log"

IF [! -d $LOGS_DIR ]; then
 echo -e "$R $LOGS_DIR does not exist $N"
 exit 1
fi  

FILES_TO_DELETE=$(find $LOGS_DIR -name "*.log" -mtime +14)   
echo "$FILES_TO_DELETE"