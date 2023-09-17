#!/bin/bash

#$Created by: Avichii$
#$Sun Sep 17 12:41:58 AM IST 2023$

# for debugging
#set -x

if [[ $# -eq 0 ]]
then
        echo "use ${0} -h for help"
        exit 0
fi

help_(){
        echo "${0} [directory_path] [search_depth] [file_size]"
        echo ""
        echo "search_depth: how deep into a directory structure a search operation should go"
        echo "ex. ==> ${0} /home/avichii 1 +10k"
        exit 0
}

if [[ $1 == "-h" ]]
then
        help_
        exit 0
fi


if [[ $# -ne 3 ]]
then
        echo "please enter currect arguments!"
		echo ""
        help_
        exit 1
fi

# variables
BASE=$1
DEPTH_OF_SEARCH=$2
# DAYS=10
SIZE=$3
RUN=0

# checks if the directory is present or not
if [[ ! -d $BASE ]]
then
        echo "Directory is not present! $BASE"
        exit 1
fi

# checks if the archive folder is present or not
if [[ ! -d "$BASE/archive" ]]
then 
        echo "directory archive doesn't exist"
        echo "creating directory archive"

        mkdir $BASE/archive 2>/dev/null
fi

# find files that have size more then 20MB or older then 10 Days
main(){
        #
        for zip in $(find $BASE -maxdepth $DEPTH_OF_SEARCH -type f -size $SIZE)
        do
                if [[ $RUN -eq 0 ]]
                then
                        echo "[$(date "+%Y-%m-%d %H:%M:%S")] archiving $zip ==> $BASE/archive" 
                        gzip $zip || exit 1
                        mv $zip.gz $BASE/archive || exit 1
                 fi
        done
}

# function calls
main
