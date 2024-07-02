#!/bin/bash

#to debug a whole script add to shebang /bin/bash -x
#to debug a part of the script use set -x to start debuggin and set +x where you want to stop debugging
#exit script on error /bin/bash -e
#display script line before it executed /bin/bash -v

#debug function (shows command before executing)
debug(){
	echo "Executing: $@"
	$@
}

debug ls *.sh
