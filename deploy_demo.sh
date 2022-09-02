
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

