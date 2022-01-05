#!/bin/bash
currentIp=$(curl -s http://whatismyip.akamai.com/)
configFile=`cat CONFIG`
ipLogFile="$(echo $configFile | awk '{print $8}')"
 
set -o noclobber
echo "$(date +"[%Y/%m/%d %H:%M:%S]") Script started" >> $ipLogFile
echo "$(date +"[%Y/%m/%d %H:%M:%S]") $currentIp" >> $ipLogFile

while [ currentIp != " " ]
do
nextIp=$(curl -s http://whatismyip.akamai.com/)
if [ "$nextIp" != $currentIp ]; then
	echo "$(date +"[%Y/%m/%d %H:%M:%S]") New ip: $nextIp" >> $ipLogFile
	currentIp=$nextIp
	./ftp.sh
else
	echo "same ip as before"
	sleep $(echo $configFile | awk '{print $4}')
fi
done
