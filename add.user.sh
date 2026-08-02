#!/bin/bash



# This script create a new user on the local system. 
# You will be prompted to enter the username (login), the person name, and a password.
# The username, password, and host for the account will be displayed. 


# Make sure the script is being executed with superuser privileges.

if [[ "${UID}" -ne o ]]
then
    echo "Please run with sudo or as root."
    exit 1
    fi


# Get the username (login).
read -p "Enter the username to create: " USER_NAME

# Get the person name (contents for the description field).
read -p "Enter the name of the person or application that will be using this account: " COMMENT 

# Get the password.
read -p "Enter the password to use for the account: " PASSWORD

# Create the account.
useradd -c "${COMMENT}" -m ${USER_NAME}  

# Check to see if the useradd command succeeded.
if [[ "${?}" -ne 0 ]]
then
    echo "The account could not be created."
    exit 1
fi
# Set the password.
echo ${PASSWORD} | passwd --stdin ${USER_NAME}

if [[ "${?}" -ne 0 ]]
then
    echo "The password for the account could not be set."
    exit 1
fi

# force password change on first login.
passwd -e ${USER_NAME}

# Display the username, password, and the host where the user was created.
echo
echo "username: ${USER_NAME}"
echo "password: ${PASSWORD}"
echo "host: ${HOSTNAME}"
