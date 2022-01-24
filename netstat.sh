echo "Now, I will detect your Linux server's services!"
echo "The www, ftp, ssh, and mail(smtp) will be detected! \n"

testfile=./netstat_checking.txt
lsof -i -P | grep LISTEN | grep :$PORT > ${testfile}

testing=$(grep ":80 " ${testfile})
if [ "${testing}" != "" ]; then
	echo "WWW is running in your system."
fi
testing=$(grep ":22 " ${testfile})
if [ "${testing}" != "" ]; then
	echo "SSH is running in your system."
fi
testing=$(grep ":21 " ${testfile})
if [ "${testing}" != "" ]; then
	echo "FTP is running in your system."
fi
testing=$(grep ":25 " ${testfile})
if [ "${testing}" != "" ]; then
	echo "Mail is running in your system."
fi
