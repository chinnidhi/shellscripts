#!/bin/bash
size=$(df -h . | awk 'NR==2{print $5}'| sed 's/%//g')
if [ $size -gt 30 ]
then
	echo "Subject: Disk usage is greater than 70% \n\n Please check"|sendmail -v "mschinnidhi@gmail.com"
fi
