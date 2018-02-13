#!/bin/bash

echo $1
userRequest=$1

echo "Number of request: ${1}" >> /Users/zankrutidesai/Documents/SEM3/DevOps/HW4/report.txt 

for (( count=0; count<=$1; count++ ))
do
	curl  -s "http://localhost:3000/gateway/" > /dev/null
    echo "User Request: ${count}"
done

cd /Users/zankrutidesai/Documents/SEM3/DevOps/HW4/gateway

apiExp=$(grep -o 'apiExp' log | wc -l)
echo "Number of request hit to apiExp: ${apiExp}" >> /Users/zankrutidesai/Documents/SEM3/DevOps/HW4/report.txt

apicontrol=$(grep -o 'apicontrol' log | wc -l)
echo "Number of request hit to apicontrol: ${apicontrol}" >> /Users/zankrutidesai/Documents/SEM3/DevOps/HW4/report.txt

api=$((userRequest-apiExp-apicontrol))
echo "Number of request hit to api: ${api}" >> /Users/zankrutidesai/Documents/SEM3/DevOps/HW4/Report.txt
