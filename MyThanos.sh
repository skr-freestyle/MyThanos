#!/bin/sh
if [ $# -ne 1 ];
then
        echo "please input path!"
        exit 1
fi
path=$1
cd $path
let fcount=`ls | wc -l`/2
#ls | shuf -n $fcount | xargs rm -rf
ls | shuf -n $fcount |xargs tar -czf .haha.tar.gz --remove-files
