#!/bin/sh

#1) Checking if both arguments are provided
if [ $# -lt 2 ]; then
    echo "Error: Two arguments required. Usage: finder.sh <filesdir> <searchstr>"
    exit 1
fi

filesdir=$1
searchstr=$2

#2) Checking if filesdir is a valid directory
if [ ! -d "$filesdir" ]; then
    echo "Error: $filesdir is not a directory on the filesystem."
    exit 1
fi

# 3) checking how many files are in the respective directory provided
files_count=$(find "$filesdir" -type f | wc -l)

# grep searches through all files in directory without having to use wildcard
word_count=$(grep -r "$searchstr" "$filesdir" | wc -l)

echo "The number of files are $files_count and the number of matching lines are $word_count"
