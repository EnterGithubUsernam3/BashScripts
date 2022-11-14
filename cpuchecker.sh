#!/bin/bash
#Simple cpu checker

echo "TEMPERATURE:"
sensors
echo "                 "

echo "FREQUENCIES:"
lscpu|grep MHz
echo "                 "
echo "                 "

exit

