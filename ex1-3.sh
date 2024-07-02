#!/bin/bash
#Display "This script is running on _______." where "_______" is the output of the "hostname" command.

MYHOST=$(hostname)
echo "This script is running on ${MYHOST}. Where "${MYHOST}" is the output of the \"hostname\" command."
