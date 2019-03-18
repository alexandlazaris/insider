#!/bin/bash
output=./output.txt

echo "Date info"
date=$(date)  
echo "$user" >> $output

echo "User info"
user=$(whoami)  
echo "$user" >> $output

echo "Operating system info"
osName=$(systeminfo | grep "OS Name")
echo "$osName" >> $output
osVersion=$(systeminfo | grep "OS Version")
echo "$osVersion" >> $output

echo "Storage info"
memTotalPhysical=$(systeminfo | grep "Total Physical Memory")
echo "$memTotalPhysical" >> $output
memFreePhysical=$(systeminfo | grep "Available Physical Memory")
echo "$memFreePhysical" >> $output