#!/bin/bash

# Update and upgrade the system
apt update -y && apt upgrade -y

# Install Python
pkg install python

# Download RKPairip zip from GitHub
curl -L -o RKPairip.zip https://github.com/TechnoIndian/RKPairip/archive/refs/heads/main.zip

# Unzip the downloaded file
unzip RKPairip.zip

# Navigate to the extracted folder
cd RKPairip-main

# Install the Python package
pip install .

# Navigate back to the home directory
cd ~

# Clean up by removing the extracted folder and zip file
rm -rf RKPairip-main
rm RKPairip.zip

# Print success message
echo -e "\e[32m===============================================\e[0m"
echo -e "\e[1;34m[*] \e[32mGreat! \e[1;35mRKPairip \e[32mInstalled Successfully..\e[0m"
echo -e "\e[32m===============================================\e[0m"
rm RKPairip.sh
