#!/bin/bash

#break is used for break loops

read -p "Enter a number from 1 - 10: " num

for i in {1..10}
do
	if [[ $i -eq $num ]]
	then
		echo "$num is fount!!!"
		break
	fi
	echo "current number $i"
done



