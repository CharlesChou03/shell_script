echo "I will use 'touch' command to create 3 files."
read -p "Input your filename: " fileuser

filename=${fileuser:-"filename"}

date1=$(date -v -2d +%Y%m%d)
date2=$(date -v -1d +%Y%m%d)
date3=$(date +%Y%m%d)

file1=${filename}${date1}
file2=${filename}${date2}
file3=${filename}${date3}

touch "$file1"
touch "$file2"
touch "$file3"
