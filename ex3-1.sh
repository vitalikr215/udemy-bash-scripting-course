#!/bin/bash
#Write a shell script that consists of a function that display the number of files in the present working directory. Name this #function "file_count" and call it in your script. If you use a variable in your function, remember to make it a local variable.

function file_count(){
	echo "File count in"
	pwd
	ls -l | wc -l #gets files count
}

file_count
