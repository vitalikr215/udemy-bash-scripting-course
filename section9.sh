#!/bin/bash
# While loops

#example of executing loop specific number of times
INDEX=1

while [ $INDEX -lt 6 ]
do
	echo "creating dir /project-$INDEX"
	((INDEX++))
done

#checking user input
#while [ "$CORRECT" != "y" ]
#do
#	read -p "What is your name:" NAME
#	read -p "Is ${NAME} correct ?" CORRECT
#done

#reading file line-by line
LINE_NUM=1
while read LINE
do
	echo "${LINE_NUM}: ${LINE}"
	((LINE_NUM++))
done < /etc/fstab
#we specify what file we want to read after done operator

#infinite loop with case statement
while true
do
	read -p "1: Show disk usage. 2: Show uptime." CHOICE
	case "$CHOICE" in
		1)
			df -h
			;;
		2)	uptime
			;;
		*)
			break
			;;
	esac
done
