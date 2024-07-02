#!/bin/bash
#Modify the previous script to accept an unlimited number of files and directories as arguments.

#$@ - special variable that an array of script arguments
for FILE_PATH in $@
	do
	if [ -d $FILE_PATH ]; then
		echo "$FILE_PATH is a directory"
	elif [ -e $FILE_PATH ]; then
		echo "$FILE_PATH is a file"
	else
		echo "$FILE_PATH is a other type of file"
	fi
done
