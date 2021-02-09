#!/bin/bash

echo 'Starting to Deploy...'
ssh ubuntu@ec2-15-236-211-78.eu-west-3.compute.amazonaws.com " sudo docker image prune -f
        cd apps/testsymfony5docker/docker/
        sudo docker-compose down
        cd ..
        git fetch origin
        git reset --hard origin/master  &&  echo 'You are doing well'
        cd docker/
        sudo docker-compose build && sudo docker-compose up -d
        "
echo 'Deployment completed successfully'