#!/bin/bash

<<com

same command for FREE_SPACE: 
	df -H | egrep -v "Filesystem|tmpfs|udev" | awk '{print \$5}' | tr -d %
	df -H | grep "sda1" | awk '{print \$5}' | tr -d %
	df -H | grep "sda1" | awk '{print $5}' | cut -d "%" -f 1

com

# checks free disk space /
FREE_SPACE=$(df -H | grep -v "Filesystem"| grep -v "tmpfs" | grep -v "udev" | awk '{print $5}' | tr -d %)
THRESHOLD=20

if [[ $FREE_SPACE -lt $THRESHOLD ]]
then
	echo "low disk space $FREE_SPACE %"
else
	echo "sufficient disk sace $FREE_SPACE %"
fi

