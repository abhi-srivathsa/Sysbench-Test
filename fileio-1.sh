#!/bin/bash

#Clear cache on host system after every run

sysbench --num-threads=16 --test=fileio --file-total-size=3G --file-test-mode=rndrw prepare
sysbench --num-threads=16 --test=fileio --file-total-size=3G --file-test-mode=rndrw run
sysbench --num-threads=16 --test=fileio --file-total-size=3G --file-test-mode=rndrw cleanup
