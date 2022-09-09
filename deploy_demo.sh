
#!/bin/bash
cd ~/demo
npm install pm2 -g

yarn install


pm2 start "yarn start" --name demo
pm2 save --force
