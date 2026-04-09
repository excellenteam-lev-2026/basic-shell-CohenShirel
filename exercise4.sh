#!/bin/bash
pwd
# ==========================================
# Speedometer Assignment Solutions - Exercise 4
# ==========================================

# 1. Check the write speed to the hard drive.
 pv /dev/zero > newFile.txt
# Speed measured: ~39.9MiB/s

# 2. Check the transfer speed between /dev/zero and /dev/null.
pv /dev/zero > /dev/null
# Speed measured: 8.96GiB/s
# Meaning of this speed: This measures the maximum internal data transfer 
# speed of the system (CPU and RAM). Because /dev/null discards the data 
# without writing to the physical hard drive, there is no disk bottleneck.

# 3. Check the transfer speed between /dev/random and /dev/null.
pv /dev/random > /dev/null
# Speed measured: ~190MiB/s
# Meaning of this speed: This is the speed of generating cryptographic 
# random data based on environmental noise (entropy). 

# 4. Check the transfer speed between /dev/urandom and /dev/null.
pv /dev/urandom > /dev/null
# Speed measured: 197MiB/s
# Meaning and difference from the previous section: 
# /dev/urandom uses mathematical algorithms to generate pseudo-random 
# numbers continuously. Unlike the traditional behavior of /dev/random, 
# it does not halt (block) when the system runs out of physical entropy, 
# allowing for a steady and fast flow of data.

# 5. Create a file named 'bigfile' containing zeros and weighing exactly 1GB.
dd if=/dev/zero of=bigfile bs=1G count=1

# 6. Copy the file to the /tmp folder using the pv command.
pv bigfile > /tmp/bigfile
