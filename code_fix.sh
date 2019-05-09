#!/bin/bash

DIRS=$(pwd)
echo $DIRS
#sed -i -e 's/[ \t]*$//g'
for filss in $(ls $DIRS)
do
	echo $filss

	sed -i -e 's/[ \t]*$//g' $filss;
	sleep 1

	{
		echo "gg"
		echo ":sleep 2"
		#echo ":%s/^M//g"
		echo "gg=G"
		echo ":set ff=unix"
		echo ":w"
		echo ":sleep 2"
		echo ":wq!"
	}|vi $filss;

done
