#!/bin/bash
pwd

# ==========================================
# Substitutions Assignment Solutions - Exercise 5
# ==========================================

# 1. Create files FileA.txt to FileF.txt using Brace Expansion.
touch File{A..F}.txt

# 2. Delete FileC.txt to FileF.txt using Brace Expansion.
rm File{C..F}.txt

# 3. Rename FileA.txt to FileA.sh using Brace Expansion (List).
# Note: Assuming the file created was .txt based on step 1. 
# If it was actually FileA.old, the command would be: mv FileA.{old,sh}
mv FileA.{txt,sh}

# 4. Delete all files in the current directory using the Wildcard '*'.
rm *

# 5. Copy all .conf files from /etc/ to the current directory (.), 
# redirecting stderr (2>) to /dev/null to ignore permission denied errors.
cp /etc/*.conf . 2> /dev/null

# 6. Display the content of all files starting with the letter 'l'.
cat l*

# 7. Search for the word "conf" in files that have exactly a 4-letter name 
# (using '?' for single character strict matching) and end with .user.
grep "conf" ????.user

# 8. Print the last modified file using Command Substitution and a pipeline.
# ls -t sorts by time, head -1 isolates the top result.
echo "<The last modified file is $(ls -t | head -1)>"

# 9. Create a directory for each group listed in /etc/group.
# 'cut' isolates the first field (-f1) delimited by colon (-d:).
# Command substitution dynamically feeds this list to 'mkdir'.
mkdir $(cut -d: -f1 /etc/group)

# 10. Print the requested string safely by using single quotes to create 
# a literal string environment, preventing shell interpretation of special characters.
echo '$\{\}-:(-;^{*}-:$'
