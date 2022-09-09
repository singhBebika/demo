
#!/bin/bash
cd ~/demo
export PATH=$PATH:/home/bebika_singh/.nvm/versions/node/v16.15.0/bin

yarn install


pm2 start yarn --interpreter bash --name demo -- start
