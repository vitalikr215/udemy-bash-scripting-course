#!/bin/bash

#Create a startup script for an application called sleep­walking­server, which is provided below. The script should be named sleep­#walking and accept "start" and "stop" as arguments. If anything other than "start" or "stop" is provided as an argument, display a #usage statement: "Usage sleep­walking start|stop" and terminate the script with an exit status of 1.

#To start sleep­walking­server, use this command: "/tmp/sleep­walking­server &" To stop sleep­walking­server, use this command: "kill #(cat /tmp/sleep­walking­server.pid)"

PATH_TO_SERVER='/tmp/walkingscript.sh'

ls -l $PATH_TO_SERVER
#copy tp temp path if script not exist there
if [ $? -eq "2" ]
	then
	echo "No script on $PATH_TO_SERVER"
	cp walkingscript.sh $PATH_TO_SERVER
	chmod 755 $PATH_TO_SERVER
fi

case $1 in
	start)
		echo "Server started"
		/tmp/walkingscript.sh &
		;;
	stop|STOP)
		echo "Server stoped"
		kill $(cat /tmp/walkingscript.pid)
		#delete server file after stop server
		rm $PATH_TO_SERVER
		;;
	*)
		echo "Usage: $0 start|stop"
		exit 1
		;;
esac
