#! /bin/bash
START_TIME_STAMP=$(date)
echo " the script is executed at:$START_TIME_STAMP"

sleep 10
END_TIME_STAMP=$(date)
TOTAL_TIME=$((END_TIME_STAMP-START_TIME_STAMP)))
echo " the script is executed in :$TOTAL_TIME seconds"
