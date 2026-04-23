#!/bin/bash

pwd
# Define the number of files: if the user did not provide an argument, the default is 50 
NUMBER=${1:-50}

# Create the directory name with the current date 
# The %F format provides the date as YYYY-MM-DD
DATE=$(date +%F)
DIR_NAME="zero_${DATE}_files"

# Physically create the directory in the system 
mkdir -p "$DIR_NAME"

# A loop that runs from 1 to the selected number (N) [cite: 11]
for N in $(seq 1 $NUMBER)
do
    # Create a file with a precise size containing only binary zeros 
    # if=/dev/zero - The source is the Linux "fountain of zeros"
    # of - The file name in the required format inside the created directory 
    # bs=1 - Each data unit size is one byte (Byte) 
    # count=$N - The number of bytes will be equal to the file index 
    dd if=/dev/zero of="$DIR_NAME/File_${N}_.dat" bs=1 count=$N status=none
done

echo "Finished creating $NUMBER files in $DIR_NAME."
