#!/bin/bash
# Program name: pingall.sh
date
cat ip.txt |  while read output
do
    ping -c 1 "$output" > /dev/null
    if [ $? -eq 0 ]; then
    echo "node $output is reachable" >> ping_success.txt
    else
    echo "node $output is Unreachable" >> ping_fail.txt
    fi
done
