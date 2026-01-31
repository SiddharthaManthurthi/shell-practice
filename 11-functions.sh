#! /bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
  echo " Please run this script with root user access"
  exit 1
fi

VALIDATE () {
if [ $1 -ne 0 ]; then
  echo "$2 installation failed"
  exit 1
else
  echo "$2 installation successful"
fi
}

echo "intalling ngindfx web server"
dnf install nghnginx -y

VALIDATE $? "nginx Installation"

dnf install mysql -y

VALIDATE $? "mysql Installation"
dnf install nodejs -y

VALIDATE $? "nodejs Installation"