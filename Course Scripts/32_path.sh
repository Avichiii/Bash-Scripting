#!/bin/bash

<<com

we can use commands such as basename, dirname & realpath in our scripts depending on the situation

com

PATH_="/home/avichii/Desktop/BashScripting/name.csv"

#1 will only print the filename
basename $PATH_

#2 wll only print the dir that file is in
dirname $PATH_

#3 will print the whole path
realpath $PATH_

