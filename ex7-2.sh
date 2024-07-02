#!/bin/bash
#Write a shell script that asks the user for the number of lines they would like to display from the /etc/passwd file and display #those lines.

LINE_NUM=1
read -p "How many lines of /etc/passwd would you like to see? " LINES
if [[ $LINES == ?(-)+([0-9]) ]] 
then
	
	while read LINE && [ $LINE_NUM -le $LINES ]
 	do
		echo "${LINE_NUM}: ${LINE}"
		((LINE_NUM++))
	done < /etc/passwd
else
	echo "Incorrect number of lines"
	exit 1
fi
