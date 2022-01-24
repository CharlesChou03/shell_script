echo "Total parameter number is ==> $#"
echo "Your whole parameter is   ==> '$@'"
shift   # 進行第一次『一個變數的 shift 』
echo "Total parameter number is ==> $#"
echo "Your whole parameter is   ==> '$@'"
shift 3 # 進行第二次『三個變數的 shift 』
echo "Total parameter number is ==> $#"
echo "Your whole parameter is   ==> '$@'"
