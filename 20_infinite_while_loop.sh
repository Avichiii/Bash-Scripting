#!/bin/bash


<<com

infinite while loop
we dont have to use [[]] in this case
that is for more then one condition, & here we only have one condition.

com


while true
do
	echo "script will run infinitely press ctrl+C to terminate"
	sleep 2s
done

