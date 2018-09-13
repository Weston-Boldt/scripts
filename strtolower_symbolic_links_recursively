#!/bin/bash

find "$1" -type l | while read symlink; do
    if [ ! -e "$symlink" ]; then
        old_path=$(readlink "$symlink")
        echo $old_path;
        new_path=$(echo "$old_path" | awk '{print tolower($0)}');
        echo $new_path;
        # new_path=${old_path/Old Drive/New Drive}
        ln -f -s "$new_path" "$symlink"
    fi
done
