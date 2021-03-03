#!/bin/bash

result=`cat access.log | awk '{print $7}' | sort -n | uniq -c | sort -nr | head -4`
echo "$result"
