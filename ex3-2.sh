#!/bin/bash
#Make the "file_count" function accept a directory as an argument. Next have the function display the name of the directory #followed #by a colon. Finally, display the number of files to the screen on the next line. Call the function three times. First, on #the "/#etc" directory, next on the "/var" directory and finally on the "/usr/bin" directory.

function file_count(){
	for DIR in $@
	do
		echo "$DIR:"
		ls $DIR -l | wc -l #gets files count in specific dir
	done
}

file_count /etc /var /usr/bin
