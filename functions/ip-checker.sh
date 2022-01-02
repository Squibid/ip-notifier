#!/bin/bash
currentIp=$(curl -s http://whatismyip.akamai.com/)
configFile=`cat CONFIG`
 
set -o noclobber
echo "$(date +"[%Y/%m/%d %H:%M:%S]") Script started" >> ip-dumps.txt
echo $(date +"[%Y/%m/%d %H:%M:%S]") $currentIp >> ip-dumps.txt

while [ currentIp != " " ]
do
nextIp=$(curl -s http://whatismyip.akamai.com/)
if [ "$nextIp" != $currentIp ]; then
	echo "$(date +"[%Y/%m/%d %H:%M:%S]") New ip: $nextIp" >> ip-dumps.txt
	currentIp=$nextIp
	echo "New ip $currentIp"
else
	echo "same ip as before"
	sleep $(echo $configFile | awk '{print $4}')
fi
done
