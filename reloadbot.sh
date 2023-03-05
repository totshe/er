#!/bin/bash

#ENV
OLDTOKEN=$(head -n1 /root/er/tokens.txt)
NEWTOKEN=$(head -n2 /root/er/tokens.txt | tail -1)
#Script
if [ -f /root/pathfinder/py/mainnet.sqlite-wal ]
then
   echo "Файл есть.Очищаю файл..."
   rm -rf /root/pathfinder/py/mainnet.sqlite
   rm -rf /root/pathfinder/py/mainnet.sqlite-wal
else
   echo "Файл отсутствует"
   rm -rf /root/pathfinder/py/mainnet.sqlite
fi

