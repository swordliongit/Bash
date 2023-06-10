#!/bin/bash

if [ -d $PWD/performance ]; then
	echo "Directory exists"
else
	mkdir $PWD/performance
fi

free >> $PWD/performance/memory.log
