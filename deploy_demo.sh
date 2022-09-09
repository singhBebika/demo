
#!/bin/bash
cd ~/demo

npm install pm2 -g
yarn install


pm2 start yarn --interpreter bash --name demo -- start
