#!/bin/bash

# Step 1: Accept a file name as an argument
filename="$conditional"

# Step 2: Check if the file exists
if [ -e "$filename" ]; then
    echo "File '$filename' exists."
else
    echo "File '$filename' does not exist. Creating the file now."
    touch "$filename"
    echo "File '$filename' created."
fi

# Step 3: Check if the file is readable
if [ -r "$filename" ]; then
    echo "File '$filename' is readable."
else
    echo "File '$filename' is not readable."
fi

# Step 4: Check if the file is writable
if [ -w "$filename" ]; then
    echo "File '$filename' is writable."
else
    echo "File '$filename' is not writable."
fi

# Step 5: Check if the file is executable
if [ -x "$filename" ]; then
    echo "File '$filename' is executable."
else
    echo "File '$filename' is not executable."
fi
