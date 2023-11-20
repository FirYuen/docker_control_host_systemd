#!/bin/bash
for((i=1;i<=10;i++));  
do   
d=$(date)
echo 
echo "$d hello ${i}"
sleep 3
done
sleep 10
exit 1