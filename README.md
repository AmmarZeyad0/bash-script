# bash-script

This repository contains a Bash script for creating a new local user account on a Linux or Unix system.

## Overview
The script prompts for the following information:
- Username
- Full name or description for the account
- Password

It then creates the user, sets the password, forces a password change on first login, and prints the created account details.

## Requirements
- A Unix-like system with Bash
- Root privileges or sudo access
- The following commands available on the system:
  - useradd
  - passwd

## Usage
Run the script with sudo:

```bash
sudo bash add.user.sh
```

You will be prompted to enter:
1. The username to create
2. The person or application name associated with the account
3. The password for the account

## What the script does
1. Verifies that the script is running with root privileges.
2. Collects the required account information.
3. Creates the user account with a home directory.
4. Sets the password.
5. Forces the password to be changed at the next login.
6. Displays the username, password, and host name.

## Notes
- This script is intended for administrative use.
- Use strong passwords for security.
- The account will be required to change its password on the first login.
