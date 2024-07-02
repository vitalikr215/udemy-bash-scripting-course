#!/bin/bash
MY_SHELL="csh"

echo "I like $MY_SHELL for scripting"
#or so if need to add something right after variable
echo "I like ${MY_SHELL}ing for scripting"

#get variable value from another variable
SERVER_NAME=$(hostname)
echo "I am running script on $SERVER_NAME"

#if statement demo
if [ $MY_SHELL = "bash" ]
then
	echo "You like bash shell."
elif [ $MY_SHELL = "csh" ]
then
	echo "You like csh shell."
else
	echo "You not like neither bash nor csh"
fi

#for loop demo
for COLOR in red green blue
do
	echo "COLOR: $COLOR"
done

#read from keybord
read -p "Enter a user name: " USERNAME
echo "User name: $USERNAME"
