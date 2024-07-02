#!/bin/bash
# "$?" -return status code of previously executed command

#make decision basing on prev command status code
HOST=$1
#ping a host 1 time
ping -c 1 $HOST

if [ "$?" -eq "0" ] 
then
	echo "$HOST reachable"
else
	echo "$HOST unreachable"
fi 	

# command1 && command2 - execute command2 if command1 succeeded
# command1 || command2 - execute command2 even if command1 not succeded

#shorter variant of prev script
ping -c 1 $HOST && echo "$HOST reachable"
ping -c 1 $HOST || echo "$HOST unreachable"

#if you are not using explicit exit command with exit code on your script then exit code of previous comannd (last command of your script will be returned on $?
