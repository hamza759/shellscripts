#!/bin/bash

<<info
This script will install the pkg that you pass in the arguments
eg: ./install_pkg.sh nginx
   ./install_pkg.sh docker.io
    ./isntall_pkg.sh unzip
info

<<info while excuting this file i pass argumentz "pkg"  by which pkg will install 
info

echo "installing $1"

sudo apt-get update > /dev/null
sudo apt-get install $1 -y > /dev/null
echo "installation Done"
