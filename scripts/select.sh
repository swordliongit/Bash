#!/bin/bash

PS3="What is your area of interest?: "
select option in CompEng Web Embedded Hardware Software Tester;
do
	echo "You have selected the option $option"
	break
done
