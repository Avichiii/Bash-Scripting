#!/bin/bash

<<com

until loop is exactly opposite of while loop.
it will run as long as the condition if false.

com

count=0
number=10


until [[ $number -eq $count ]]
do
	echo "number is $number"
	let number--
done
