echo "Enter your option \n"
read -p "Please input (Y/N): " input

[ "${input}" == "Y" -o "${input}" == "y" ] && echo "OK, continue" && exit 0
[ "${input}" == "N" -o "${input}" == "n" ] && echo "Oh, interrupt !" && exit 0

echo "I don't know what your choice is" && exit 0
