network="192.168.1"

#for sitenu in {1..3}
for sitenu in $(seq 1 3)
do
    ping -c 1 -W 1 ${network}.${sitenu} &> /dev/null && result=0 || result=1
	# 開始顯示結果是正確的啟動 (UP) 還是錯誤的沒有連通 (DOWN)
    if [ "${result}" == 0 ]; then
        echo "Server ${network}.${sitenu} is UP."
    else
        echo "Server ${network}.${sitenu} is DOWN."
    fi
done
