
#!/bin/bash
cd ~/demo
export PATH=$PATH:/home/bebika_singh/.nvm/versions/node/v16.10.0/bebika_singh

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
