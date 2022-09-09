
#!/bin/bash
cd ~/demo

npm install pm2 -g
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
  pm2 start --name=demo yarn -- start
  pm2 log
  pm2 save --force
else
  pm2 restart demo
  pm2 log
  pm2 save --force
fi;
pm2 reload demo