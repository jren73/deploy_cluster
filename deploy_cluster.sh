#!/bin/sh

hostfile='/home/cc/hosts'
cmdfile='/home/cc/Download/commands.txt'



while read line; do
    cmd=" $line"
    n=1
    master=''
    target=''
    while read line; do
      if [ $n == 1 ]
      then
          master=$line
      else
          target=$line

          connect="ssh -t -t cc@"$target
          commands="$connect $cmd &"
          echo $commands
          eval $commands
          #e="$connect exit"
          #echo $e
      fi

      (( n=n+1 ))
    done < $hostfile

done < $cmdfile

echo $master
echo $target
