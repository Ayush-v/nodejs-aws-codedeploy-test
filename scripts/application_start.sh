#!/bin/bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

echo 'run application_start.sh: ' >> /home/ec2-user/nodejs-aws-codedeploy-test/deploy.log


cd /home/ec2-user/nodejs-aws-codedeploy-test
echo 'sudo pm2 restart nodejs-express-app' >> /home/ec2-user/nodejs-aws-codedeploy-test/deploy.log
pm2 restart nodejs-express-app >> /home/ec2-user/nodejs-aws-codedeploy-test/deploy.log