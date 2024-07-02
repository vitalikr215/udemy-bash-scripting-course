#!/bin/bash
#Logging
#logs stored in /var/log/..
# Syslogs using facilities (kernel, user, mail, daemon, auth, local-7) and severities (emerg, crit, alert, warning, notice, info,debug) to categorize message

#use logger command to write logs
#log to local0 facility error with info severity
logger -p local0.info "Message"

#log tagged with myscript to local0 facility error with info severity
logger -t myscript -p local0.info "Message"

#log tagged with myscript and include PID
logger -t myscript -p local0.info "Message"

