#!/bin/bash

# we can read input from user using read keyword

<<com

read <variable name>

com
<<commented

read name
echo "Your name is $name"

commented

# we can provide string with read keyword using -p 
echo "What is your name?"
echo ""
read -p "name:" name2
echo "Your name is $name2"
