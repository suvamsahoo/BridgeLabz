#!/bin/bash -x

mkdir backupFolder
for file in `ls *.log.1`
do
  identifyFiles=`find ~/var/log/$file -mtime -7 -ls`
  fileStatus=`echo $identifyFiles | awk '{print $2}'`
  if [ $fileStatus=0 ];
  then
      mv $file backupFolder
  fi
done
