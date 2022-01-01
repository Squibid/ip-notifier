#!/bin/bash
currentIp=$(curl -s http://whatismyip.akamai.com/)
timeStamp=$(date +"[%Y/%m/%d %H:%M:%S]")
configFile=`cat config.txt`

set -o noclobber
echo "$timeStamp Script started." >> ip-dumps.txt
echo $timeStamp $currentIp >> ip-dumps.txt

while [ currentIp != " " ]
do
nextIp=$(curl -s http://whatismyip.akamai.com)
if [ $nextIp != $currentip ]; then
        echo "$timeStamp New ip: $nextIp" >> ip-dumps.txt
        currentIp=$nextIp
else
        echo "same ip as before"
        sleep $(echo $configFile | awk '{print $7}')
fi
done

if [ currentIp = " " ]; then
        echo "$timestamp !!Not connected to a network!!" >> ip-dumps.txt
