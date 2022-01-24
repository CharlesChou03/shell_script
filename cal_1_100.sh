i=0
s=0

while [ "${i}" != "100" ]
do
    i=$((${i}+1))
    s=$((${s}+${i}))
done
echo "The result of '1+2+3+...+100' is ==> $s"
