#!/bin/sh

hostfile='/home/cc/hosts'
while read line; do
    target=$line
    commands="sh clean.sh $target &"
    echo "$commands"
    eval $commands
done < $hostfile
