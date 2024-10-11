#!/bin/bash

# Step 1: Accept source and backup directories from the user
echo "Enter the source directory (where .txt files are located):"
read source_dir

echo "Enter the backup directory (where files will be copied):"
read backup_dir

# Step 2: Check if the backup directory exists
if [ ! -d "$backup_dir" ]; then
    echo "Backup directory does not exist. Creating it now..."
    mkdir -p "$backup_dir" # -p creates parent directories as needed
    echo "Backup directory created."
else
    echo "Backup directory already exists."
fi

# Step 3: Copy all .txt files from the source directory to the backup directory
# We use *.txt to copy only .txt files
cp "$source_dir"/*.txt "$backup_dir"

# Step 4: Print a message indicating the files were copied
echo "All .txt files have been copied to $backup_dir."
