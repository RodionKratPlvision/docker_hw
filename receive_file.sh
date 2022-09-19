#! /bin/bash

if [ $# -eq 0 ]
then
        echo "Receive standart_file"
        nc -lvp 851 > standart_file.txt < /dev/null
elif [ $# -eq 1 ]
then
        echo "Receive file: $1"
        nc -lvp 851 > $1 < /dev/null
fi
