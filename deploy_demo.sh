
#!/bin/bash
cd ~/demo

npm install pm2 -g
yarn install


pm2 start --name=demo yarn bash -- start
pm2 list
pm2 log