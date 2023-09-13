#!/bin/bash

<<com

we can use logical operator such as && , ||

com

read -p "age: " age
read -p "country: " country

<<com

if the vaiable is holding string we need to use == for checking
if the variable is holding numerical value ( ex. 21 ), we can use -eq

com

if [[ $age -ge 18 ]] && [[ $country == "India" ]]
then
	echo "You can vote!"
else
	echo "You can't vote!!"
fi

read -p "your occupation: " occupation

if [[ $occupation == "pentesting" ]] || [[ $age -ge 18 ]]
then
	echo "you can participate in ctf match"
else
	echo "thank you for answering."
fi

