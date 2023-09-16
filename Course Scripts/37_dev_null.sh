#!/bin/bash

<<com

we can redirect output to /dev/null, which discards outputs.
we can use it with 2> (2 is to discard standard error)

in combined 2>/dev/null (redirect standard error to the /dev/null device)

com

#find sudors files
find / -perm -u=s -type f >>suidfiles.txt 2>/dev/null


