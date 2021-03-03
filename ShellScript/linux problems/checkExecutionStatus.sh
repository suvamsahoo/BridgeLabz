#!/bin/bash -x

hello
if [ $? -eq 0 ];
then
    echo "Success"
else
    echo "Faild"
fi

#------------------------------------#

ls .
if [ $? -eq 0 ];
then
    echo "Success"
else
    echo "Faild"
fi
