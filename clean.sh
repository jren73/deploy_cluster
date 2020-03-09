#!/bin/sh

cmd1="rm -rf /home/cc/WarpX/diags"
cmd2="rm -rf /tmp/diags"
cmd3="rm -rf /home/cc/diags"
cmd4="rm -rf /home/cc/WarpX/Backtrace.*"

hostfile='/home/cc/hosts'
target=$1

	connect="ssh -t -t cc@"$target
        commands1="$connect $cmd1 "
	eval $commands1
	commands1="$connect $cmd2 "
        eval $commands1
	commands1="$connect $cmd3 "
        eval $commands1
	commands1="$connect $cmd4 "
        eval $commands1
	commands1="$connect df -h"
        eval $commands1
