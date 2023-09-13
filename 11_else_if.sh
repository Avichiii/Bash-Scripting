#!/bin/bash

# we can perform if else conditions

<<com

if [[ condition  ]]
then
	expression
elif [[ condition ]]
then
	expression
else
	expression
fi

com

read -p "What is your Marks? " marks

#maintain spacing
if [[ $marks -ge 80 ]]
then
	echo "Your are passed with first division"
elif [[ $marks -ge 60 ]]
then
	echo "Your are passed with second division"
elif [[ $marks -ge 40 ]]
then
	echo "Your are passed with third division"
else
	echo "You are failed!"
fi

