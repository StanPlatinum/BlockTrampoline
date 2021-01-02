#!/bin/bash

DOCK_EXE=./docker.inst.bak
#DOCK_EXE=/usr/bin/docker

# timing
START=`date +%s%N`;
${DOCK_EXE} info 
END=`date +%s%N`;
time=$((END-START))
time=`expr $time / 1000000`
# ms
echo $time >> out_1.txt

START=`date +%s%N`;
${DOCK_EXE} logout
END=`date +%s%N`;
time=$((END-START))
time=`expr $time / 1000000`
# ms
echo $time >> out_2.txt

START=`date +%s%N`;
${DOCK_EXE} login -u liuweijie -p Ab19910129
END=`date +%s%N`;
time=$((END-START))
time=`expr $time / 1000000`
# ms
echo $time >> out_3.txt

START=`date +%s%N`;
${DOCK_EXE} ps
END=`date +%s%N`;
time=$((END-START))
time=`expr $time / 1000000`
# ms
echo $time >> out_4.txt

START=`date +%s%N`;
${DOCK_EXE} images
END=`date +%s%N`;
time=$((END-START))
time=`expr $time / 1000000`
# ms
echo $time >> out_5.txt

START=`date +%s%N`;
${DOCK_EXE} pull ubuntu:20.04
END=`date +%s%N`;
time=$((END-START))
time=`expr $time / 1000000`
# ms
echo $time >> out_6.txt

START=`date +%s%N`;
${DOCK_EXE} run --name ubuntu-test -it -d ubuntu:20.04
END=`date +%s%N`;
time=$((END-START))
time=`expr $time / 1000000`
# ms
echo $time >> out_7.txt

START=`date +%s%N`;
${DOCK_EXE} commit ubuntu-test ubuntu-test:1.0
END=`date +%s%N`;
time=$((END-START))
time=`expr $time / 1000000`
# ms
echo $time >> out_8.txt

START=`date +%s%N`;
${DOCK_EXE} tag ubuntu-test:1.0 liuweijie/ubuntu-test
END=`date +%s%N`;
time=$((END-START))
time=`expr $time / 1000000`
# ms
echo $time >> out_9.txt

START=`date +%s%N`;
${DOCK_EXE} stop ubuntu-test
END=`date +%s%N`;
time=$((END-START))
time=`expr $time / 1000000`
# ms
echo $time >> out_10.txt

START=`date +%s%N`;
${DOCK_EXE} rm ubuntu-test
END=`date +%s%N`;
time=$((END-START))
time=`expr $time / 1000000`
# ms
echo $time >> out_11.txt

START=`date +%s%N`;
${DOCK_EXE} push liuweijie/ubuntu-test
END=`date +%s%N`;
time=$((END-START))
time=`expr $time / 1000000`
# ms
echo $time >> out_12.txt

START=`date +%s%N`;
${DOCK_EXE} rmi ubuntu:20.04
END=`date +%s%N`;
time=$((END-START))
time=`expr $time / 1000000`
# ms
echo $time >> out_13.txt

