#!/bin/bash

#Env
MY_IP=$(ip addr show | grep 'state UP' -A2 | tail -n1 | awk '{print $2}' | cut -f1 -d'/')
TOKEN=$(grep $MY_IP "/root/er/tokens.txt" | awk '{print $4}')


#script
echo $TOKEN
