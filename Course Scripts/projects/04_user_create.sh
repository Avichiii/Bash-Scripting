#!/bin/bash

#$Created By: Avichii$
#$Sun Sep 17 05:12:50 PM IST 2023$

# Script should be executed with sudo/root access.
if [[ $UID -ne 0 ]]
then
	echo "only root can execute this script"
	exit 1
fi

# User should provide atleast one argument as a username else guid him
if [[ $# -lt 1 ]]
then
	echo "Usage: ${0} [username] [comment]..."
	exit 1
fi

# Store 1st argument as a user name
USER_NAME=$1

# In case of more then one argumentl, store it as a account comments
shift
COMMENT=$@

# Create a password
PASSWORD=$(date +%s%N)

# Create the user
useradd -c "$COMMENT" -m $USER_NAME

# Check if the user is successfully created or not.
if [[ $? -ne 0 ]]
then
	echo "The account could not be created"
	exit 1
fi

# Set the password for the user.
#echo $PASSWORD | passwd --stdin $USER_NAME 
echo "$USER_NAME:$PASSWORD" | chpasswd

# Check if password is successfully set or not
if [[ $? -ne 0 ]]
then
	echo "Password could not be set"
	exit 1
fi

# Force password change on first login
passwd -e $USER_NAME

# Display the username, password, and host where the user was created.
echo
echo "USER: $USER_NAME"
echo 
echo "PASSWORD: $PASSWORD"
echo
echo "HOST: $(hostname)"

