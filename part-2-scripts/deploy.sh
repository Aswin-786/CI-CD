#!/bin/bash
export PATH=$PATH:/home/ubuntu/.nvm/versions/node/v20.5.0/bin

cd CI-CD
 git pull origin main
 curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
 nvm install node
 npm i
 cd server
 node index.js
 #pm2 kill
 #pm2 start index.js
