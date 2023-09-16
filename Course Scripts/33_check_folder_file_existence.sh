#!/bin/bash


#we can check if a file or folder exist or not using if statement

PATH_DIR="/home/avichii/Desktop"
PATH_FILE="/home/avichii/Desktop/BashScriptin/name.csv"

if [[ -d $PATH_DIR ]]
then 
	echo "dir exist"
else
	echo "dir doesn't exist"
	exit 1
fi

if [[ ! -f $PATH_FILE ]]
then 
	echo "sorry no file named $(basename $PATH_FILE)"
	exit 1
else
	echo "file exist"
fi

