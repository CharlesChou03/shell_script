read -p "Please input a number, I will count for 1+2+...+your_input: " nu
[ ${nu} -lt 1 ] && echo "Number need to greater than 0" && exit 0

s=0
for (( i=1; i<=${nu}; i=i+1 ))
do
    s=$((${s}+${i}))
done


echo "The result of '1+2+3+...+${nu}' is ==> ${s}"
