#!/bin/bash
# file name: stress.sh

cd /mnt/awe/condor/bsadkhin/stress

filename=`date +%s%N`
filename="$filename.stress.out"
filename_error="$filename.stress.error"

echo "Test Begin" > $filename
./consume17gb  >> $filename
test_exit_code=$?
echo "Test Complete with exit code $test_exit_code" >> $filename
