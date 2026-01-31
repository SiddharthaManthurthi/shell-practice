#! /bin/bash
USERID=$(id -u)
LOGS_FOLDER= "/var/log/shell-script"
LOGS_FILE="/var/log/shell-script/$0.log"

if [ $USERID -ne 0 ]; then
  echo " Please run this script with root user access"
  exit 1
fi

mkdir -p $LOGS_FOLDER

VALIDATE () {
   if [ $1 -ne 0 ]; then
      echo "$2 installation failed"
      exit 1
    else
        echo "$2 installation successful"
    fi
}

echo "intalling nginx web server"

dnf install nginx -y &>> $LOGS_FILE

VALIDATE $? "nginx Installation"

dnf install mysql -y &>> $LOGS_FILE

VALIDATE $? "mysql Installation"
dnf install nodejs -y &>> $LOGS_FILE

VALIDATE $? "nodejs Installation"