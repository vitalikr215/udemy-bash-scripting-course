#!/bin/bash
#Write a shell script that that allows a user to select an action from the menu. The actions are to show the disk usage, show the uptime on the system, and show the users that are logged into the system. Tell the user to enter q to quit. Display "Goodbye!" just before the script exits.
#If the user enters anything other than 1,2,3,or q,tell them that it is an "Invalid option."
while true
do
	read -p "1. Show disk usage.
2. Show system uptime.
3. Show the users logged into the system.
What would you like to do? (Enter q to quit.)" CHOICE
	case "$CHOICE" in
		1)
			df -h
			;;
		2)
			uptime
			;;
		3)
			who
			;;
		q)
			echo "Goodbye!"
			exit 0
			;;
		*)
			echo "Invalid option"
			;;
	esac		
done
