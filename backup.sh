#!/bin/bash

<<info
this shell ecripts will take periodic backups
can also be used with cron
while excuting this file ./bakcup.sh /home/ubuntu/scripts /home/ubuntu/backups
info

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d-%H-%M')

zip -r "$dest/backup-$timestamp.zip" $src > /dev/null
aws s3 sync "$dest" s3://demo-backups-tws
echo "backup completed & uploaded to s3"

