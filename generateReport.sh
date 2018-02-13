#!/bin/bash

#node /home/rutvij/Documents/DevOps/HW4/Hw4_API/myapp/app.js >> report & npm start &

echo $1
userRequest=$1

echo "Number of request: ${1}" >> /Users/zankrutidesai/Documents/SEM3/DevOps/HW4/generateReport.txt

for (( count=0; count<=$1; count++ ))
do
	curl  -s "http://localhost:3000/gateway/" > /dev/null
    echo "User Request: ${count}"

	if [ $count -eq "$2" ]
	then
        sleep 60s
	    echo "Sleeping for 60s"
    #kilall node
	fi
  
        if [ $count -eq "$3" ]
	then
        sleep 60s
        echo "Sleeping for 60s"
	#node /home/rutvij/Documents/DevOps/HW4/Hw4_API/myapp/app.js >> report & npm start &
	fi
done

cd /Users/zankrutidesai/Documents/SEM3/DevOps/HW4/gateway

apigrace=$(grep -o 'Gracefully' log | wc -l)
echo "Number of request that were gracefully handled: ${apigrace}" >> /Users/zankrutidesai/Documents/SEM3/DevOps/HW4/generateReport.txt

apiExp=$(grep -o 'apiExp' log | wc -l)
echo "Number of request hit to apiExp: ${apiExp}" >> /Users/zankrutidesai/Documents/SEM3/DevOps/HW4/generateReport.txt

apicontrol=$(grep -o 'apicontrol' log | wc -l)
echo "Number of request hit to apicontrol: ${apicontrol}" >> /Users/zankrutidesai/Documents/SEM3/DevOps/HW4/generateReport.txt

api=$((userRequest-apiExp-apicontrol))
echo "Number of request hit to api: ${api}" >> /Users/zankrutidesai/Documents/SEM3/DevOps/HW4/generateReport.txt