#!/bin/sh

# 1. Check if both arguments are provided
if [ $# -lt 2 ]; then
    echo "Error: Missing arguments."
    echo "Usage: $0 <writefile> <writestr>"
    exit 1
fi

writefile=$1
writestr=$2

# 2. Extract the directory path from the full file path
# dirname returns the path prefix (e.g., /tmp/aesd/assignment1 from /tmp/aesd/assignment1/sample.txt)
writedir=$(dirname "$writefile")

# 3. Create the directory path
mkdir -p "$writedir"

# 4. Write the string to the file
echo "$writestr" > "$writefile"

