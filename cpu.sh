#!/bin/bash

i=1
while [ $1 -lt 6 ]
do
	echo "Test number: $1" 
	sysbench --test=cpu --cpu-max-prime=20000 run
	i=`expr $i + 1`
done
