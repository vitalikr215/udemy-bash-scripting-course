#!/bin/bash
#Write a shell script that renames all files in the current directory that end in ".jpg" to begin with today's date in the following #format: YYYY­MM­DD.

cd images

for FILE in *.jpg
do
	NEWNAME=$(date +%Y%m%d)$FILE
	echo "Rename $FILE to $NEWNAME"
	mv $FILE $NEWNAME
done
