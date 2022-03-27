#!/bin/bash
ftpHost=""
ftpUser=""
ftpPasswd=""
ftpFile="ip-dumps"

ftp -inv $HOST <<EOF
user $HOST $PASSWORD
mget $uploadFile
bye
EOF
