echo "Enter your option \n"
read -p "Please input (Y/N): " input

if [ ${input} == "Y" ] || [ ${input} == "y" ]; then
    echo "OK, continue"
    exit 0
fi

if [ ${input} == "N" ] || [ ${input} == "n" ]; then
    echo "Oh, interrupt !"
    exit 0
fi
echo "I don't know what your choice is" && exit 0
