#!/bin/bash
#
# Author: Timelord
# Usage: ./bingg.sh <file1> (<file2> <..>) 
# Usage: echo "hello world" | ./bingg.sh

upload()
{
	echo $(curl -s -F "Filedata=@$1" https://bin.gg/upload/public)
}

if [ $# -eq 0 ]; then
	upload -
else
	for ARG in "$@"; do
		upload $ARG
	done
fi
