#!/bin/sh 
if [ -z "$1" ];then
	echo "Usage: $0 file"
	exit 0
else
	if [ "$1" == "-h" ];then
		echo "Usage: $0 file"
		exit 0
	fi
	cat $1 | grep -HanE '([^A-Z0-9]|^)(AKIA|A3T|AGPA|AIDA|AROA|AIPA|ANPA|ANVA|ASIA)[A-Z0-9]{12,}'
fi
