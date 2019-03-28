#!/bin/sh
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

. ~/.nvm/nvm.sh

nvm install 10.15

npm install -g pm2
pm2 update

cd /home/ec2-user/fbl/be && npm install
pm2 start /home/ec2-user/fbl/be/index.js

cd /home/ec2-user/fbl/fe && npm install && npm run build
