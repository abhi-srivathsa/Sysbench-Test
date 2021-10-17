#!/bin/bash

#Clear cache on host system after every run

i=1
while [ $i -lt 6 ]
do
      sysbench --test=fileio --file-total-size=2G --file-test-mode=rndrw --max-time=30 --max-requests=0 --file-extra-flags=direct prepare
      sysbench --test=fileio --file-total-size=2G --file-test-mode=rndrw --max-time=30 --max-requests=0 --file-extra-flags=direct run
      sleep 60
      sysbench --test=fileio --file-total-size=2G --file-test-mode=rndrw --max-time=30 --max-requests=0 --file-extra-flags=direct cleanup
      i=`expr $i + 1`
done
