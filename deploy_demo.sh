
#!/bin/bash
cd ~/demo

#export pm2 
export PATH=$PATH:/home/bebika/.nvm/versions/node/v16.15.0/bin
#export yarn
export PATH=$PATH:/home/bebika/.nvm/versions/node/v16.15.0/bin

yarn install

if [ -d ".next" ]; then
  rm -r .next/*
else
  mkdir .next
fi;

cp -r build/* .next/
rm -rf build

pm2 describe demo > /dev/null
RUNNING=$?
if [ "${RUNNING}" -ne 0 ]; then
  pm2 start --name=demo npm -- start
  pm2 save --force
else
  pm2 restart demo
  pm2 save --force
fi;
pm2 reload demo