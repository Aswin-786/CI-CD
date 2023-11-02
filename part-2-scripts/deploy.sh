#!/bin/bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

# Change to the project directory
cd /home/ubuntu/CI-CD # Update the directory path according to your project

# Use NVM to install the required Node.js version
nvm install 20.5.0

# Use the installed Node.js version
nvm use 20.5.0

# Fetch the latest changes from the main branch of the Git repository
git pull origin main

# Change to the server directory
cd server

# Install PM2 if not already available
npm install pm2 -g

# Terminate any existing running processes managed by PM2
pm2 kill

# Start the Node.js application using PM2
pm2 start index.js
