#!/bin/sh

NUMBER=0
SLOW_EXIT_SECONDS=${SLOW_EXIT_SECONDS:-1}

if [ "X${CRASH_CODE}" != "X" ]; then
    echo "Crashing with code ${CRASH_CODE} due to environment variable \$CRASH_CODE"
    exit $CRASH_CODE
fi

slow_exit() {
    trap - EXIT INT TERM
    echo "Slowly exiting (${SLOW_EXIT_SECONDS} seconds)"
    sleep "${SLOW_EXIT_SECONDS}"
    echo "bye!"
    exit
}
trap slow_exit EXIT INT TERM

while true
do
    NUMBER=`expr $NUMBER + 1`
    date | tr '\n' ':'
    echo " logdaddy reporting $NUMBER"
    sleep 1
done
