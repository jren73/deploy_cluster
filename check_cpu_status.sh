#!/bin/sh


nproc_all=$( nproc --all )
(( nproc_all=nproc_all-1 ))

#eval "sudo su"
for i in $(seq 1 $nproc_all);
do
	filename="/sys/devices/system/cpu/cpu"$i"/online"
	var=$( cat $filename )
	echo $var
	if [ $var == 0 ]
	then
		commands="sudo echo 1 > "$filename
		echo "$commands"
		eval "$commands"
	fi
done
eval "lscpu"
eval "exit"
#var=$( cat /sys/devices/system/cpu/cpu27/online )
#echo $var
