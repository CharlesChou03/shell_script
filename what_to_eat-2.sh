eat[1]="賣噹噹漢堡"
eat[2]="肯爺爺炸雞"
eat[3]="彩虹日式便當"
eat[4]="越油越好吃大雅"
eat[5]="想不出吃啥學餐"
eat[6]="太師父便當"
eat[7]="池上便當"
eat[8]="懷念火車便當"
eat[9]="一起吃泡麵"
eatnum=9

eated=0
eatednu[1]=0
eatednu[2]=0
eatednu[3]=0
index=1

while [ ${eated} -lt 3 ] 
do
    check=$(( ${RANDOM} * ${eatnum} / 32767 + 1 ))
    exist=0
    for (( i=1; i<=3; i=i+1))
    do
        if [ ${check} == ${eatednu[${i}]} ]; then
            exist=1 
            break 
        fi
    done
    if [ ${exist} == 0 ]; then
        eatednu[${index}]=${check}
        index=$((${index}+1))
        eated=$((${eated}+1))   
    fi
done

for (( i=1; i<=3; i=i+1 ))
do
    #echo "${eatednu[${i}]}"
    echo "you may eat ${eat[${eatednu[${i}]}]}"
done
