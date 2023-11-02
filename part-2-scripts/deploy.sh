#!/bin/bash

# Change to the project directory
cd /home/ubuntu/CI-CD # Update the directory path according to your project
ls

# Fetch the latest changes from the main branch of the Git repository
git pull origin main
ls

# Change to the server directory
cd server
ls

# Use 'which' command to get the path of node and npm
NODE_PATH=$(which node)
NPM_PATH=$(which npm)

# Check if Node.js and npm are available
if [ -z "$NODE_PATH" ] || [ -z "$NPM_PATH" ]; then
    echo "Node.js or npm not found. Please ensure they are installed or adjust the paths."
    exit 1
fi

# Install PM2 if not already available
$NPM_PATH i -g pm2

# Terminate any existing running processes managed by PM2
$(which pm2) kill

# Start the Node.js application using PM2
$(which pm2) start index.js
