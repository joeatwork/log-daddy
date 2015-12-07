#!/bin/sh

NUMBER=0

while true
do
    NUMBER=`expr $NUMBER + 1`
    date | tr '\n' ':'
    echo " logdaddy reporting $NUMBER"
    sleep 1
done
