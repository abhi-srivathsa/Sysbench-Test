#!/bin/bash

#Clear cache on host system after every run

i=1
while [ $1 -lt 6 ]
do
      sysbench --test=fileio --file-total-size=4G --file-test-mode=rndrw --max-time=30 --max-requests=0 --file-extra-flags= direct prepare
      sysbench --test=fileio --file-total-size=4G --file-test-mode=rndrw --max-time=30 --max-requests=0 --file-extra-flags= direct run
      sleep(1000)
      sysbench --test=fileio --file-total-size=4G --file-test-mode=rndrw --max-time=30 --max-requests=0 --file-extra-flags= direct cleanup
      i=`expr $i + 1`
done
