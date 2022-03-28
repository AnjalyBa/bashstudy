#!/bin/bash

echo "IP please"
read  ip
stat=1

if [[ $ip =~ ^[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}$ ]]; then
    OIFS=$IFS
    IFS='.'
    ip=($ip)
    IFS=$OIFS
    [[ ${ip[0]} -le 255 && ${ip[1]} -le 255 && ${ip[2]} -le 255 && ${ip[3]} -le 255 ]]
    stat=$?
fi

if [ "${stat}" -eq 0 ]; then
    echo "Valid IP address"
else
    echo "Invalid IP address"
fi

echo "IP address"
read ip
if  [[ "$ip" =~ (^192.168|^10\.|^172\.) ]];

then
     echo "${ip} is a private IP address"
else
       	echo "$ip is a public IP"
fi
