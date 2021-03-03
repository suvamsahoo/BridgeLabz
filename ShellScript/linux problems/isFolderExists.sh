#!/bin/bash -x

echo "Enter the folder or directory name: "
read x
if [ -d $x ]; then
    echo "Folder or directory already exists"
else
    echo "Folder or directory created."
    mkdir $x
fi

