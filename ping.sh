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

#################################################

#!/bin/bash

for i in $( cat $HOME/iplist.txt )
do
ping -q -c2 $i > /dev/null
if [ $? -eq 0 ]
then
echo $i "Pingable"
else
echo $i "Not Pingable"
fi
done

@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@##############

 #!/bin/bash
#
#
while read line
do
        /usr/sbin/ping $line > /dev/null
        if [ $? == 0 ];
        then
        echo "$line is pinging"
        else
        echo "$line is not pinging"
        fi
done < ipreport.txt

