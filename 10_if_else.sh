#!/bin/bash

# we can perform if else conditions

<<com

if [[ condition  ]]
then
	expression
else
	expression
fi

com

read -p "What is your Marks? " marks

#maintain spacing
if [[ $marks -gt 40 ]]
then
	echo "Your are passed!"
else
	echo "You are failed!"
fi

