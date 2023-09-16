#!/bin/bash

<<com

we can debug our scripts using:
	
	set -x (prints debug info in the cmd)
	set -e (exit the script when error occured)

we need to specify them in the top of the script.
then when run, the script will print which commands are being run in the cmd.
this will make easier to find the errors
com

set -e

# printing the script name
echo "script name ${0}"

# script will exit
cd /root

#this won't be printed in the cmd 
whoami

