#!/bin/bash
configFile=`cat CONFIG`
currentIp=$(curl -s http://whatismyip.akamai.com/)
ipLogFile="$(echo $configFile | awk '{print $8}')"
ipNotMet="$(echo $configFile | awk '{print $12}')"

set -o noclobber
echo "$(date +"[%Y/%m/%d %H:%M:%S]") Script started" >> $ipLogFile
echo "$(date +"[%Y/%m/%d %H:%M:%S]") $currentIp" >> $ipLogFile

while [ currentIp != " " ]; do
    nextIp="beans"
    if [ "$nextIp" != $currentIp ]; then 
        echo "$(date +"[%Y/%m/%d %H:%M:%S]") New ip: $nextIp" >> $ipLogFile
        currentIp=$nextIp
        python 'ip-'$ipNotMet'.py'
    else
		echo "same ip as before"
        sleep "$(echo $configFile | awk '{print $4}')"
    fi
done
