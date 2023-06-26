#!/bin/bash

url_file="Url.txt"

while read -r url; do
    # Skip empty line
    if [[ -z "$url" || "$url" == "#"* ]]; then
        continue
    fi

    # Download the URL using wget
    echo "Downloading: $url"
    wget "$url"
    echo "Download complete."
done < "$url_file"
