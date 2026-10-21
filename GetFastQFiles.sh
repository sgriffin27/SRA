#!/bin/bash

#check for required command line argument

if [[ -z "$1" ]]
then
                 echo ""

                exit
fi


#iterates through a directory of directories, each containing a metadata file produced by ffq --ftp. replace /scratch/zlewis/SRAtest/ with the path to your own d>

while read -r line

do
sleep 10
source /scratch/seg75580/downloadSRA/curlFastq.sh "$line" & done <"$1"
#
