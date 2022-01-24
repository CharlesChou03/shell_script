users=$(cut -f 1 -d ':' /etc/passwd)
for username in ${users}
do
    id ${username}
done
