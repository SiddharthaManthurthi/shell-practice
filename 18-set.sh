#! /bin/bash

set -e # this will be checking for error, if errors it will exit the script

USERID=$(id -u)
LOGS_FOLDER="/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"
R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[0m"

if [ $USERID -ne 0 ]; then
  echo -e "$R Please run this script with root user access $N" | tee -a $LOGS_FILE
  exit 1
fi

mkdir -p $LOGS_FOLDER

VALIDATE () {
   if [ $1 -ne 0 ]; then
      echo -e "$R $2 installation failed $N" | tee -a $LOGS_FILE
      exit 1
    else
        echo -e "$G $2 installation successful $N"
    fi
}

for package in $@ # sudo sh 14-loops.sh nginx mysql nodejs
do
   dnf list installed $package &>> $LOGS_FILE
   if [ $? -ne 0 ]; then
     echo "$package not installed, installing now"
     dnf install $package -y &>> $LOGS_FILE
     #VALIDATE $? "$package Installation"
   else
        echo -e "$Y $package is already installed, skipping $N"
    fi

done