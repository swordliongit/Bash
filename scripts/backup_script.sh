#!/bin/bash

# Author: Kılıçarslan

# Date Created: 27-05-2023
# Last Modified: 27-05-2023
# Description:

# Usage:

echo "Hello, ${USER^}"
echo "I will now back up your home directory, $HOME"

currentdir=$(pwd)

echo "You are running this script from $currentdir."
echo "Therefore, I will save the backup in $currentdir."

tar -cvf ./my_backup_"$(date +%d-%m-%Y_%H-%M-%S)".tar $currentdir/* 2>/dev/null

echo "Backup Completed Successfully"

exit 0 
