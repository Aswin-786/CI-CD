#!/bin/bash
export PATH=$PATH:/home/ubuntu/.nvm/versions/node/v20.5.0/bin

cd CI-CD
 git pull origin main
 cd server
 git pull origin main
 pm2 kill
 pm2 start index.js

