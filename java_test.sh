#!/bin/bash
# file name: sleep.sh

cd /mnt/awe/condor/bsadkhin/experiment

sleep 120 &
pid=$!

echo /proc/$pid/cgroup  > cgroup

env > env
java -XshowSettings:vm -version  2> java0
java -XX:+UseContainerSupport -XX:MaxRAMFraction=1  -XshowSettings:vm -version 2> java1 

java  -XX:+UseContainerSupport -XX:+PreferContainerQuotaForCPUCount  -XshowSettings:vm -version  2> java2
