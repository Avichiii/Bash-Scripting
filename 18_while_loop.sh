#!/bin/bash

<<com

while loop with if statement 

com

read -p "enter a number: " number

#if number is 1 - 10 range
if [[ $number -le 10 ]]
then
	# runs only if the number is 1 - 10 range 
	while [[ $number -le 10 ]]
	do
		echo "number $number"
		# increment number
		let number++
	done
else
	echo "enter a number in 1 - 9 range"
fi

