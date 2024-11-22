#!/bin/bash
if [ "$#" -ne 1 ]; then
    echo "Illegal number of parameters!"
    echo "Usage: $0 <filename>"
    exit
fi
filename=$1
SLEEP_VALUE=0.5

while IFS= read -r line
do
    if [ -z "$line" ] ; then
        # echo "sleep"
        sleep $SLEEP_VALUE
    else
        # echo "Processing line: $line"
        hcitool cmd "$line"
    fi
done < "$filename"