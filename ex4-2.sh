#!/bin/bash
#Write a script that renames files based on the file extension. The script should prompt the user for a file extension. Next, it #should ask the user what prefix to prepend to the file name(s). By default the prefix should be the current date in YYYY­MM­DD format. #So, if the user simply presses enter the date will be used. Otherwise, whatever the user entered will be used as the prefix. Next, #it should display the original file name and the new name of the file. Finally, it should rename the file.

DEFAULT_PREFIX=$(date +%Y%m%d)

read -p "What files you are going to remane: " WILDCARD
read -p "File prefix (current date by default:" PREFIX

if [ -z $PREFIX ] 
then
	PREFIX=$DEFAULT_PREFIX
fi


cd images

for FILE in $WILDCARD
do
	NEWNAME=$PREFIX$FILE
	echo "Rename $FILE to $NEWNAME"
	#mv $FILE $NEWNAME
done
