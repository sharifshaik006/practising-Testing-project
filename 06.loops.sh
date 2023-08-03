#!/bin/bash

# Package list to be installed
packages=( "git" "wget" "vim" "net-tools" )

# Specify the directory for log files
LOG_DIR="/home/ubuntu/logs"
mkdir -p $LOG_DIR

# Function to check if a package is installed
is_installed() {
    dpkg -s $1 &> /dev/null

    if [ $? -eq 0 ]; then
        return 0
    else
        return 1
    fi
}

# Function to install a package
install_package() {
    if is_installed $1; then
        echo "Package $1 is already installed."
    else
        echo "Installing package $1..."
        sudo apt-get install -y $1 >> "${LOG_DIR}/${1}.log" 2>&1
        if [ $? -eq 0 ]; then
            echo "Package $1 installed successfully."
        else
            echo "Failed to install package $1. Check the log file for more details."
        fi
    fi
}

# Update the packages list
sudo apt-get update

# Install each package
for pkg in "${packages[@]}"; do
    install_package $pkg
done
