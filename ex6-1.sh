#!/bin/bash
#Write a shell script that displays one random number to the screen and also generates a syslog message with that random number. Use #the "user" facility and the "info" facility for your messages.

RANDOM_NUMBER=$RANDOM

echo $RANDOM_NUMBER
logger -s -p user.info $RANDOM_NUMBER 
