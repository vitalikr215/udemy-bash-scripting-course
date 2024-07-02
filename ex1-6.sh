#!/bin/bash
#Write a shell script that prompts the user for a name of a file or directory and reports if it is a regular file, a directory, or #other type of file. Also perform an ls command against the file or directory with the long listing option.

read -p "Enter a path: " FILE_PATH
if [ -d $FILE_PATH ]; then
	echo "$FILE_PATH is a directory"
elif [ -e $FILE_PATH ]; then
	echo "$FILE_PATH is a file"
else
	echo "$FILE_PATH is a other type of file"
fi
	


