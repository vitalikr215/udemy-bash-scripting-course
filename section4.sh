#!/bin/bash
function hello(){
	echo "Hello $1 !" #will show first param of function
	echo "This will show a sctipt name: $0" 
}

#function with unlimited number of params
function hello2(){
	local LOCAL_VAR=1 #local variable that visible only inside function
	for NAME in $@
	do
		echo "Hello $NAME ($LOCAL_VAR)"
		LOCAL_VAR=$((LOCAL_VAR+1)) #how to increment variable
	done	
	
	return 0 #if not explicitly return - the return code will be an exit code of last command
}


#function call
hello Vitalik
hello2 Gopa Pisun Noga Ruka Golova
