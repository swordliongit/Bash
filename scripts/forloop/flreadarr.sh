#!/bin/bash

readarray -t days < days.txt

for day in "${days[@]}"; do
    echo "Today is $day"
done

exit 0