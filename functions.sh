#!/bin/bash

userid=$(id -u)

validate(){
    if [ $1 -ne 0 ]
    then
       echo "$2...fail"
    else
       echo "$2...success"
    fi
}

if [ userid -ne 0 ]
then
    echo "please run with root access"
    exit 1
else
   echo "you are super user"
fi

validate $userid