#!/bin/bash
#Modify the previous script so that it accepts the file or directory name as an argument instead of prompting the user to enter it.

FILE_PATH=$1
if [ -d $FILE_PATH ]; then
	echo "$FILE_PATH is a directory"
elif [ -e $FILE_PATH ]; then
	echo "$FILE_PATH is a file"
else
	echo "$FILE_PATH is a other type of file"
fi
