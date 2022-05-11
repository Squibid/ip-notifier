from ftplib import FTP

ftpServerAddr=''
ftpUsername=''
ftpPassword=''
ftpUploadFile='ip-dumps'

ftp = FTP(ftpServerAddr)
ftp.login(user=ftpUsername, passwd = ftpPassword)
with open(ftpUploadFile, "w") as file:
    ftp.retrbinary(f"RETR {ftpUploadFile}", file.write)
