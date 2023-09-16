#!/bin/bash

#we are going to create a ping connectivity script using $?

if [[ $# -ne 1 ]]
then 
	echo "enter only one argument!"
	exit 1
fi

#storing the whole output in connection variable
connection=$(ping -c 1 $1 | grep "0%" | cut -d " " -f 6)

#using ternary operator to printing the connection string
[[ $connection == "0%" ]] && echo "connection is available" || echo "connection is not available"

#updates the run date of the script
echo "site: $1 date: $(date)" >> redirect.log
