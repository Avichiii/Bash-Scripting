#!/bin/bash

#we can also make constant variables using readonly
readonly cant_change="hellsender"
echo "name is $cant_change"

#trying to overwrite the variable
cant_change="avichii"
echo ""
echo "you must have seen the commandline error!"
echo ""
echo "sorry but you cant change the constent variable!"

