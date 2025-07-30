#!/bin/bash

hero="rancho"
villan="virus"

echo "3 idiots ka hero hay $hero"
echo "3 idiots ka villan  hay  $villan"

echo "current logged in user $USER"

#user input
read -p "rancho ks pora naam kiys tha?" fullname

echo "rancho ka pora naam $fullname tha"

#argument

echo "movie ka name:  $0"

echo "first idiot:  $1"
echo "second idot:  $2"
echo "the total numbers of idiots: $#"

echo "hence the 3idot are: $@"




