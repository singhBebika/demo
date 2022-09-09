export PATH=$PATH:/home/bebika_singh/.nvm/versions/node/v16.15.0/bin
#!/bin/bash
cd ~/demo

yarn install


pm2 start "yarn start" --name demo
pm2 save --force
