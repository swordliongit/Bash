#!/bin/bash

read -p "What is your first name?: " fname
read -p "What is your surname/family name: " sname
read -N 4 -p "What is your extension number? (4 digits): " extnum
echo
read -N 4 -s -p "What access code would you like to use when dialing in? (4 digits): " code
echo

PS3="What is the type of your phone?: "
select phone in headset handheld;
do
	echo "Your phone type is $phone"
	break
done

PS3="What is your department?: "
select department in finance sales "customer service" engineering;
do
	echo "Your department is $department"
	break
done


echo "$fname,$sname,$extnum,$code,$phone,$department" >> extensions.csv

exit 0


