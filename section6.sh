#!bin/bash

#wildcards
#* match 0 or more characters (example *.txt)
#? match exactly one character (example a??.??g)
# [] - match any of character between the bracket (exmple cat[nt]* - matches can, cat, catch, candy)
# [!] - matches any characters NOT included between bracket 
# Named character classes [[:alpha:]] [[:alnum:]] [[:digit:]] [[:space:]] [[:lower:]] [[:upper:]]

#copy files with displaying their names

for FILE in /var/www/*.html
do
	echo "Copying $FILE"
	cp $FILE /var/www-just-html
done
