#!/bin/bash

<<com

bash has reserved variables that the user cant use for his variable names.
two of them are \$RANDOM \$UID

com

let num=$RANDOM%2

# sudo -i  # Change to the root user interactively
[[ $num -eq 0 ]] && $(sudo -i ) || echo "betterluck next time!"

<<com

sudo su - #wont work, because it will try to run as a subprocess inside the script &
try to open a new shell without changing the current shell. thus we use sudo -i

com
