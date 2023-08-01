#!/bin/bash
# @v3rb0se xda

# move modules
source_dir="$HOME/Desktop/out"
destination_dir="$HOME/Desktop/Modules"
ko_files=$(find $source_dir -name "*.ko")


for file in $ko_files; do
    cp "$file" "$destination_dir"
done
