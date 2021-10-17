#!/bin/bash

i=1
while [ $i -lt 6 ]
do
	echo "Test number: $i" 
	sysbench --test=cpu --cpu-max-prime=10000 run
	i=`expr $i + 1`
	sleep 60
done
