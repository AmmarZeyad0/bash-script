#!/bin/bash

# This script generate a list of random passwords.

# A random number as a password.

PASSWORD="${RANDOM}"
echo "${PASSWORD}"

# Three random number toghter. 

PASSWORD="${RANDOM}${RANDOM}${RANDOM}" 
echo "${PASSWORD}"

# Use the current date/time as the basis of the password.

PASSWORD=$(date +%s)
echo "${PASSWORD}"

#Use nanoseconds to act as randomization.

PASSWORD=$(date +%s%N)
echo "${PASSWORD}"

# A better password.

PASSWORD=$(date +%s$N | shasum -a 256 | head -c24)
echo "${PASSWROD}"

# Append a special character to the password. 
SPECIAL_CHARACTER=$(echo '!@#$%^&*()' | folad -w1 | shuf | head -c1)
echo "${PASSWORD}${SPECIAL_CHARACTER}"



