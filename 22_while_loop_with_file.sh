#!/bin/bash

<<com

while loop will execute aslong as read will able to read input from the name variable,
name is taking names from the FILE variable.

com


FILE="/home/avichii/Desktop/BashScripting/names.txt"

while read name
do
	echo "name is $name"
done < $FILE

