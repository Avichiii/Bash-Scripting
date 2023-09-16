#!/bin/bash

#checks user is root or not
[[ $UID -eq 0 ]] && echo "you are root" || echo "n0t root"
