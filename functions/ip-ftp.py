from ftplib import FTP
ftpServerAddr=''
ftpUsername=''
ftpPassword=''
ftpUploadFile='ip-dumps'

ftp = FTP(ftpServerAddr)
ftp.login(user=ftpUsername, passwd = ftpPassword)
with open(ftpUploadFile, "r") as file:
    ftp.storbinary(f"STOR {ftpUploadFile}", file)
