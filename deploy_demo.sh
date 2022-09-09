
#!/bin/bash
cd ~/demo

npm install pm2 -g
yarn install


RUNNING=$?
if [ "${RUNNING}" -ne 0 ]; then
  pm2 start --name=demo yarn -- start
  pm2 save --force
else
  pm2 restart demo
  pm2 save --force
fi;
pm2 reload demo
pm2 log