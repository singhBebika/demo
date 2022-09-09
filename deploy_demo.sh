
#!/bin/bash
cd ~/demo
export PATH=/home/bebika_singh/.nvm/versions/node/v16.10.0/bin
yarn install


pm2 start "yarn start" --name demo
pm2 save --force
