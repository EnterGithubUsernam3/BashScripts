#!/bin/bash 

#Simple system checker

echo "CPU"
lscpu
#cat /proc/cpuinfo


echo "MEMORY:"
free -h
echo "                                               "
echo  "STATE OF POWER:"
upower -i /org/freedesktop/UPower/devices/battery_BAT0
echo "                                                "
echo "DISK USAGE:"
du -sh ~/* 
echo "                                               "
df -h
echo "                                               "

echo "UPTIME:"
uptime -p
echo "                                               "
exit

