#!/bin/bash

read -p "Enter obsidian folder containing .md: " pathfoldermd

mapfile -t file_array < <(ls "$pathfoldermd" | sort -n)

for file in "${file_array[@]}"; do
  echo "![[$file]]" 
done
