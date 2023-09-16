#!/bin/bash

<<com

we can provide arguements in the commandline

com

#we can exit the script using exit

# exit 0 if the script is successful, 0 ohterwise.

if [[ $# -eq 0 ]]
then 
	echo "please provide at least one argument!"
	exit 1
fi




# as we know $1, $2 specifies arguements in a order
# ex. myscript.sh arg1 arg2

echo "Your name is $1"
echo "Your age is $2"
echo "You like $3"

#ex. script.sh avichii 21 anime.



<<com

we use \$? to view the previous command status
ex. cd /root as a regular user.
then running echo \$? will give 1
com


