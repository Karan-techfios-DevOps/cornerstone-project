#!/bin/bash

sudo yum update -y
sudo yum install -y docker
docker --version 
# start docker services
service docker start
service docker status
# add usesr dockeradmin
sudo useradd dockeradmin
sudo passwd dockeradmin
# give dockeradmin root privileges
sudo usermod -aG docker dockeradmin

