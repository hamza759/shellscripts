#!/bin/bash

create_user() {

read -p "create user: " username

sudo useradd -m $username

echo "user created"

}
for (( i=1; i<=5; i++))
do 
	create_user
done

