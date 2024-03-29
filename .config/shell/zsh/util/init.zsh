#!/bin/zsh

parent_dir="$XDG_CONFIG_HOME/shell/zsh/util"

# Source all files in this dir and its subdirectories.
# All that is needed to add extra functionality is to create a new file, and it will be
# sourced automatically.

for content in "$parent_dir"/*; do
    if [[ -f "$content" && "$content" != "$parent_dir/init.zsh" ]]; then
        source "$content"
    elif [[ -d "$content" ]]; then
        subdir="$content"
        for subdir_content in "$subdir"/*; do
            if [[ -f $subdir_content ]]; then
                source "$subdir_content"
            fi
        done
    fi
done

unset parent_dir
