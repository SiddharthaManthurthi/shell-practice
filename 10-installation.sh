#! /bin/bash
USERID=$(id -u)

if [ $USERID -ne 0 ]; then
  echo " Please run this script with root user access"
  exit 1
fi

echo "intalling nginx web server"
dnf install nginx -y

if [ $? -ne 0 ]; then
  echo "nginx installation failed"
  exit 1
else
  echo "nginx installation successful"
fi

dnf install mysql -y
if [$? -ne 0]; then
  echo " Installing mysql failed"
  exit 1
else
  echo "mysql installation successful"
fi

dnf install nodejs -y
if [ $? -ne 0] ; then
 echo " Installing nodejs failed"
 exit 1
else
 echo "nodejs installation successful"
fi