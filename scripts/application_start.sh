#!/bin/bash

echo 'run application_start.sh: ' >> /home/ec2-user/nodejs-aws-codedeploy-test/deploy.log

echo 'pm2 restart nodejs-express-app' >> /home/ec2-user/nodejs-aws-codedeploy-test/deploy.log
pm2 restart nodejs-express-app >> /home/ec2-user/nodejs-aws-codedeploy-test/deploy.log