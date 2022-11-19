#!/bin/bash

#give permission for everything in the express-app directory
sudo chmod -R 777 /home/ec2-user/nodejs-aws-codedeploy-test

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

echo 'run after_install.sh: ' >> /home/ec2-user/nodejs-aws-codedeploy-test/deploy.log

echo 'cd /home/ec2-user/nodejs-server-cicd' >> /home/ec2-user/nodejs-aws-codedeploy-test/deploy.log
cd /home/ec2-user/nodejs-aws-codedeploy-test >> /home/ec2-user/nodejs-aws-codedeploy-test/deploy.log

echo 'npm install' >> /home/ec2-user/nodejs-aws-codedeploy-test/deploy.log 
npm install >> /home/ec2-user/nodejs-aws-codedeploy-test/deploy.log
