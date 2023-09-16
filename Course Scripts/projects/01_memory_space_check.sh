#!/bin/bash

#checks for free ram space
FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
THRESHOLD=500

[[ $FREE_SPACE -lt $THRESHOLD ]] && echo "running low on ram $FREE_SPACE M" || echo "ram space is sufficient $FREE_SPACE M"
