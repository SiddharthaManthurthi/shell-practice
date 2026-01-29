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
  echo "nginx installed successfully"
fi
