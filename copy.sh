#!/bin/sh

sudo scp -i Machine1.pem /var/lib/jenkins/workspace/kitt/build.zip ubuntu@3.144.124.171:/var/www/ec2
