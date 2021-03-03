#!/bin/bash

result=`cat access.log | awk '{print $1}' | sort -n | uniq -c | sort -nr | head -10`
echo "$result "
