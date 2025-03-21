#!/bin/bash

# Function to print error messages
error() {
  echo "Error: $1"
  exit 1
}

# Function to print success messages
success() {
  echo "Success: $1"
}

# Check if running as root
if [ "$EUID" -ne 0 ]; then
  error "Please run as root"
fi

# Check if environment file exists
if [ ! -f "environment" ]; then
  error "environment file not found"
fi

# Check if apt.conf file exists
if [ ! -f "apt.conf" ]; then
  error "apt.conf file not found"
fi

# Copy the environment file to /etc/
if cp -f environment /etc/; then
  success "Copied environment file to /etc/"
else
  error "Failed to copy environment file to /etc/"
fi

# Copy the apt.conf file to /etc/apt/
if cp -f apt.conf /etc/apt/; then
  success "Copied apt.conf file to /etc/apt/"
else
  error "Failed to copy apt.conf file to /etc/apt/"
fi
