#!/bin/bash

<<formylearning

this is  multiline comment
formylearning

create_user(){
echo "=========creation of user========"
read -p "enter the usename" username
read -p "enter the password" password

sudo useradd -m "$username"

echo -e "$password\n$password" | sudo passwd "$username" 
echo "==========Creation of user completed============"
}

del_user(){
sudo userdel $username
echo "========= Deletion of User Completed========"
}


check_user(){
if [ $(cat /etc/passwd | grep $username | wc | awk '{print $1}') == 0 ];
then 
     echo "as wc is 0 the user is deleted"
else
     echo " the user was not deleted"
fi
}

create_user
del_user
check_user
