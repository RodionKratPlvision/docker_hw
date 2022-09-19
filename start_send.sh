#!/bin/bash

if [ $# -eq 0 ]
then
        echo "Send files.txt"
        nc -w 5 172.19.0.3 851 < files.txt
elif [ $# -eq 1 ]
then
        echo "Send $1"
        nc -w 5 172.19.0.3 851 < $1
fi
