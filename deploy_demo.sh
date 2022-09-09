
#!/bin/bash
cd ~/demo
export PATH=$PATH:/home/bebika_singh/.nvm/versions/node/v16.10.0/bin/pm2
export PATH=$PATH:/home/bebika_singh/.nvm/versions/node/v16.10.0/bin/yarn
yarn install


pm2 start "yarn start" --name demo
pm2 save --force
