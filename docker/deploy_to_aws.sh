#!/bin/bash

echo 'Starting to Deploy...'
ssh ubuntu@ec2-15-236-211-78.eu-west-3.compute.amazonaws.com " sudo docker image prune -f
        cd apps
        sudo docker-compose down
        git fetch origin
        git reset --hard origin/master  &&  echo 'You are doing well'
        sudo docker-compose build && sudo docker-compose up -d
        "
echo 'Deployment completed successfully'