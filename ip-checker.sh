#!/bin/bash
currentIp=$(curl -s http://whatismyip.akamai.com/)
timeStamp=$(date +"[%Y/%m/%d %H:%M:%S]")

set -o noclobber
echo "$timeStamp Script started." >> ip-dumps.txt
echo $timeStamp $currentIp >> ip-dumps.txt

while [ currentIp != " " ]
do
nextIp=$(curl -s http://whatismyip.akamai.com)
if [ $nextIp != $currentip ]; then
        echo "$timestamp New ip: $nextIp" >> ip-dumps.txt
        currentIp=$nextIp
else
        echo "same ip as before"
        sleep $(sed '2!d' config.txt)
fi
done
