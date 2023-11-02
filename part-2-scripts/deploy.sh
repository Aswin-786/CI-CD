#!/bin/bash

# Ensure the correct Node.js environment
export PATH=$PATH:/home/ubuntu/.nvm/versions/node/vXX.X.X/bin # Update the Node.js path accordingly

# Change to the project directory
cd /home/ubuntu/CI-CD # Update the directory path according to your project
ls
# Fetch the latest changes from the main branch of the Git repository
git pull origin main
ls
# Change to the server directory
cd server
ls
npm i -g pm2
# Terminate any existing running processes managed by PM2
pm2 kill

# Start the Node.js application using PM2
pm2 start index.js
