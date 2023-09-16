#!/bin/bash

<<com

we can provide arguements in the commandline

com

# as we know $1, $2 specifies arguements in a order
# ex. myscript.sh arg1 arg2

echo "Your name is $1"
echo "Your age is $2"
echo "You like $3"

#ex. script.sh avichii 21 anime.



<<com

$1,$2..... for specified argument order
$@ specify all the arguments
$# specify number of arguments

com

echo "all the arguments mentioned after script will be printed out: $@"

echo "number of arguments $#"

#we can use $@ in many cases, such as in a loop
<<com

@ will hold all the commandline argument then for loop will iter through each one of them

com

for file in $@
do
	echo "copying $file"
done

