#!/bin/bash
#Write a shell script that accepts a file or directory name as an argument. Have the script report if it is a regular file, a #directory, or other type of file. If it is a regular file, exit with a 0 exit status. If it is a directory, exit with a 1 exit #status. If it is some other type of file, exit with a 2 exit status.

FILE_PATH=$1
if [ -d $FILE_PATH ]; then
	echo "$FILE_PATH is a directory"
	exit 1
elif [ -e $FILE_PATH ]; then
	echo "$FILE_PATH is a file"
	exit 0
else
	echo "$FILE_PATH is a other type of file"
	exit 2
fi
