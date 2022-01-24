echo "This program will calculate pi value. \n"
echo "You should input a float number to calculate pi value.\n"
read -p "The scale number (10~10000) ? " checking
num=${checking:-"10"}           # 開始判斷有否有輸入數值
echo "Starting calculate pi value.  Be patient."
time echo "scale=${num}; 4*a(1)" | bc -lq
