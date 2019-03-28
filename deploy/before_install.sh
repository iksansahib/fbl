npm install -g pm2
pm2 update

cd ~/home/ec2-user/fbl/be
npm install
pm2 start index.js

cd ~/home/ec2-user/fbl/fe
npm install
npm run build
