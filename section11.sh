#sed

#find and replace (replace 'assistant' to 'assistant to the' on specific file it does not changes original file)  
#syntax 's/search-pattern/replacement-string/flags
sed 's/assistant/assistant to the/' manager.txt

#do case insensitive replacement using i flag
sed 's/Assistant/sed/i' manager.txt

#you could specify what occurrences of pattern replace or replace globally
#replace all occurrences
sed 's/Assistant/sed/g' manager.txt 
#replace only second occurrence
sed 's/Assistant/sed/g' manager.txt 
#to save sed output use > filename after sed command
#to change contet of original file and create a backup of it. Original file will be saved to manager.txt.bak
sed -i.bak 's/assistant/sed/g' manager.txt

#to write changes to specific file
sed 's/sed/assistant/gw manage2.txt' manager.txt

#modify string /home/jason -> /export/users/jasonc. To escape character / use /\
echo /home/jason | sed 's/\/home\/jason/\/export\/users\/jasonc/'

#delete a line mathing pattern
sed '/This/d' manager.txt

#if need to use a several patterns for sed use ';'. Delete a blank lines and lines started with '#'
sed '/^#/d; /^$/d' config.cfg
sed -e '/^#/d' -e '/^$/d' config.cfg #same as previous line

#you could save you sed commands to file and use it (one command per line)
sed -f script.sed config.cfg

#change only specific line (second line in example)
sed '2 s/apache/httpd/' config.cfg
#for several lines change on lines 1 and 3
sed '1,3 s/run/execute/'

