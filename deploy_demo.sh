
#!/bin/bash
cd ~/demo

#export pm2 path
export PATH=$PATH:/home/bebika/.npm-global/bin
#export yarn path
export PATH=$PATH:/home/bebika/.nvm/versions/node/v16.10.0/bin

npm install

if [ -d ".next" ]; then
  rm -r .next/*
else
  mkdir .next
fi;

cp -r build/* .next/
rm -rf build

RUNNING=$?
if [ "${RUNNING}" -ne 0 ]; then
  pm2 start --name=demo npm -- start
  pm2 save --force
else
  pm2 restart demo
  pm2 save --force
fi;
pm2 reload demo