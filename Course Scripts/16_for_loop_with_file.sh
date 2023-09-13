#!/bin/bash

<<com

we are reading a file named names.txt

first cat reads first name from the FILE variable,
that name is passed to the name variable,
which is then printed on the output

com

FILE="/home/avichii/Desktop/BashScripting/names.txt"

for name in $(cat $FILE)
do
	echo "name: $name"
done

