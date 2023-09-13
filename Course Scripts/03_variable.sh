#!/bin/bash

# we can declare variables just like other langs
name="avichii"
profession="Pentesting!"
age="NULL"

#we use $ to use variables in our script.
echo "my name is $name, profession $profession & age is $age"

<<com
we can also change the content of a certain variable,
because bash also read the code from up to down.

com

name="hellsender"
echo "name has been changed to $name"

#we can also store the output of a command in a variable, using ()
hostname=$(hostname)
username=$(whoami)

echo ""
echo "name of this machine is $hostname, and the user who made the script is $username"





