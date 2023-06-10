#!/bin/bash

while read line; do
    echo "$line"
done < <(ls $HOME)

exit 0 