#!/bin/bash

read -p "What is your first name?: " fname
read -p "What is your surname/family name: " sname
read -N 4 -p "What is your extension number? (4 digits): " extnum
echo
read -N 4 -s -p "What access code would you like to use when dialing in? (4 digits): " code
echo

echo "$fname,$sname,$extnum,$code" >> extensions.csv

exit 0


