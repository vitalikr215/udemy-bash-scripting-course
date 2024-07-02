#!/bin/bash
#Modify the previous script so that it uses a logging function. Additionally tag each syslog message with "randomly" and include the process ID. Generate 3 random numbers.

RANDOM_NUMBERS=""
for i in {1..3}  
do
  RANDOM_NUMBERS+=" "$RANDOM
done

echo $RANDOM_NUMBERS
logger -i -s -t randomly $RANDOM_NUMBERS 
