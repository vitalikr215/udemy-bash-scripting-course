#!/bin/bash
#case statement

case @1 in
	start)
	#if you want to use several values for the same case
	#start|START)
		/usr/sbin/sshd
		;;
	stop)
		kill $(cat /var/run/sshd.pid)
		;;
	*)
	#default case (when not much previous)
		echo "Usage: $0 start|stop"
		exit 1
		;;
esac

#you could use wildcards in case statement
read -p "Enter yes or no:"  ANSWER
case $ANSWER in
	[yY]|[yY][eE][sS])
		echo "You've answered yes"
		;;
	[nN]|[nN][oO])
		echo "You've answered no"
		;;
	*)
		echo "Invalid answer"
		;;
esac
