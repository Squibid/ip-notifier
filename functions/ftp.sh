#!/bin/bash
configFile=`cat CONFIG`
uploadFile="$(echo $conifgFile | awk '{print $8}')"
HOST="$(echo $configFile | awk '{print $11}')"
USER="$(echo $configFile | awk '{print $14}')"
PASSWORD="$(echo $configFile | awk '{print $17}')"

ftp -inv $HOST <<EOF
user $HOST $PASSWORD
mput $uploadFile
bye
EOF
