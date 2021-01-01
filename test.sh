#!/bin/bash

# DOCKER=./docker.inst.bak
DOCK_EXE=/usr/bin/docker

# clean up
rm -f out_*.txt

# timing
START=`date +%s%N`;
${DOCK_EXE} info 
END=`date +%s%N`;
time=$((END-START))
time=`expr $time / 1000000`
# ms
echo $time >> out_1.txt

