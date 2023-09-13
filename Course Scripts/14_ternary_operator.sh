#!/bin/bash


<<com

ternary means three 

expression && condition1 || condition

com

#we can use [[]] with out if keyword
read -p "age: " age

[[ $age -ge 18 ]] && echo "adult" || echo "minor"

