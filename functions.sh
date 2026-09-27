#!/bin/bash

userid=$(id -u)
timestamp=$(date +%F-%H-%M-%S)
scriptname=$($0)
validate(){
    if [ $1 -ne 0 ]
    then
       echo "$2...fail"
    else
       echo "$2...success"
    fi
}

if [ $userid -ne 0 ]
then
    echo "please run with root access"
    exit 1
else
   echo "you are super user"
fi

validate $userid "root access"