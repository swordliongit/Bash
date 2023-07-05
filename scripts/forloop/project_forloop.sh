#!/bin/bash

readarray -t urls < urls.txt

for url in "${urls[@]}"; do
    cuturl=$(echo "$url" | cut -d . -f 2)
    curl --head "$url" > "$cuturl.txt"
done

exit 0
