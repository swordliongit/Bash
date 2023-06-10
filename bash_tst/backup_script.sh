#!/bin/bash

# Author: Kılıçarslan

# Date Created: 27-05-2023
# Last Modified: 27-05-2023
# Description:

# Usage:

tar -cvf ./my_backup_"$(date +%d-%m-%Y_%H-%M-%S)".tar ./* 2>/dev/null

exit 0 