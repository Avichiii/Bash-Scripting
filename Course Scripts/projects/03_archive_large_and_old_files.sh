#!/bin/bash

#$Created by: Avichii$
#$Sun Sep 17 12:41:58 AM IST 2023$

# for debugging
#set -x

# variables
BASE=$1
DEPTH_OF_SEARCH=1
DAYS=10
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
large_files(){
	# assigning a local variable
	local diff=$(find $BASE -type f -maxdepth $DEPTH_OF_SEARCH -size +10M)
	return $diff
}

old_files(){
	local file_array=()
	
	for file in $(cd $BASE && ls -lh | awk '{print $7}')
	do
		local file_age=$(($DAYS-$file))
		echo "$file_age"
		if [[ $file_age -gt $DAYS ]]
		then
			file_array+=($file)
		fi
	done
	
	return ${file_array[@]}
}

old_files
