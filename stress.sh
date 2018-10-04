#!/bin/bash
# file name: sleep.sh

cd /mnt/awe/condor/bsadkhin/stress
filename=`date +%s%N`
filename="$filename.stress.out"
filename_error="$filename.stress.error"
echo $filename
./stress --vm 1 --cpu 1 --io 1 --vm-bytes 60GB --timeout 90s --vm-hang 30 > $filename 2> $filename_error

echo "Test Complete" >> $filename
