echo "This program will try to calculate :"
echo "How many days before your demobilization date..."

read -p "Please input your demobilization date (YYYYMMDD ex>20150716): " date2

date_d=$(echo ${date2} | grep '^[0-9]\{8\}$')
[ "${date_d}" == "" ] && echo "You input the wrong date format..." && exit 1

#ref:https://www.cnblogs.com/qwj-sysu/p/5396372.html
date_dem=$(date -j -f %Y%m%d ${date_d} +%s)
date_now=$(date +%s)
date_total_s=$((${date_dem}-${date_now}))
date_d=$((${date_total_s}/60/60/24))

if [ "${date_total_s}" -lt "0" ]; then
    echo "You had been demobilization before: " $((-1*${date_d})) " ago" 
else
    date_h=$(($((${date_total_s} - ${date_d}*24*60*60))/60/60))
   	echo "You will demobilize after ${date_d} days and ${date_h} hours."
fi
