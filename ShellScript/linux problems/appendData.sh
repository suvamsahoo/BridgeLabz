#!/bin/bash -x

touch abc.log.1 def.log.1 jkl.log.1 mno.log.1
for file in `ls *.log.1`
do
   fileBaseName=`echo $file | awk -F. '{print $1}'`
   updateFileName="$fileBaseName-"`date +"%d%m%Y"`".log"
   if [ -f $updateFileName ];
   then
       rm -r $updateFileName;
   fi
   mv $file $updateFileName;
done
