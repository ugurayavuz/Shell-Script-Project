#!/bin/bash
path=$1 #Takes first argument and put it to the path.
echo "$path"
#NUMBER=$(find $path  -type f -printf '%T+ %p\n' | sort | awk -F ' ' '{print $2}'  | cut -c 3- | wc -l) #Finds number of files.
#echo "number of files:" "$NUMBER"
#OLDEST=$(find //$path   -type f -printf '%T+ %p\n' | sort | awk -F ' ' '{print $2}'  | cut -c 3- | head -n 1) #Finds oldest file.
if [[ $# -eq 0 ]]; then
	NUMBER=$(find $path . -type f -printf '%T+ %p\n' | sort | awk -F ' ' '{print $2}'  | cut -c 3- | wc -l) #Finds number of files.
	echo "number of files:" "$NUMBER"
	OLDEST=$(find $path  . -type f -printf '%T+ %p\n' | sort | awk -F ' ' '{print $2}'  | cut -c 3- | head -n 1) #Finds oldest file.
	echo "oldest file:" "$OLDEST"
rm -i $OLDEST #Deletes oldest file
	else
		NUMBER=$(find $path  -type f -printf '%T+ %p\n' | sort | awk -F ' ' '{print $2}'  | cut -c 3- | wc -l) #Finds number of files.
	echo "number of files:" "$NUMBER"
	OLDEST=$(find //$path   -type f -printf '%T+ %p\n' | sort | awk -F ' ' '{print $2}'  | cut -c 3- | head -n 1) #Finds oldest file.
	echo "oldest file:" "$OLDEST"
rm -i $OLDEST #Deletes oldest file

fi