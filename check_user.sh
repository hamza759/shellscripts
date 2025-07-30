#!/bin/bash

<<info
this scripts check if user exits
info


read -p "Enter the username went to check" username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [ $count == 0 ];
then 	
	echo "user doesnot exist"
else
	echo "user exist"
fi
