#!/bin/bash

# --- Cronit Bonus Task ---
# Goal: Create a sorted list of home directory files by size every day at 00:00[cite: 22, 23, 26].

pwd

mkdir -p ~/FilesLog
ls -S ~/ > ~/FilesLog/sorted_files_$(date +%F).txt

# --- Cron Configuration Instructions ---
# To schedule this to run every day at 00:00 (midnight):
# 1. Open the crontab editor by running: crontab -e
# 2. Add the following line at the end of the file:
# 0 0 * * * /bin/bash /path/to/your/exercise7.sh
#
# Note: In a direct crontab entry, the command would look like this:
# 0 0 * * * mkdir -p ~/FilesLog && ls -S ~/ > ~/FilesLog/sorted_files_$(date +\%F).txt
