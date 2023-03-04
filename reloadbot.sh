#!/bin/bash

#ENV
OLDTOKEN=$(head -n1 /root/er/tokens.txt)
NEWTOKEN=$(head -n2 /root/er/tokens.txt | tail -1)
#Script
if pgrep -f /root/er/bot.py > /dev/null
then
   echo "Команда 'bot.py' уже запущена.Выключаю бота..."
   kill -9 $(ps aux | grep /root/er/bot.py | awk '{print $2}' | head -1)
   rm -rf /root/pathfinder/py/mainnet.sqlite
   sleep 2
   source /root/test/my_env/bin/activate
   python /root/er/bot.py
else
   echo "'bot.py' не запущен, включаю бота..."
   source /root/test/my_env/bin/activate
   python /root/er/bot.py

fi