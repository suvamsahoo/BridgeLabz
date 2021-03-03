#!/bin/bash

result=`cat access.log | awk '{print $9}' | sort -n | uniq -c | sort -nr`
echo "$result"

