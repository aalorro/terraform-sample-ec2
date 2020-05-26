#!/bin/bash

sudo apt-get update
sudo apt-get install apache2 -y
sudo service apache2 start
sudo apt-get install ruby -y
sudo add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
sudo apt-get install gdebi-core -y
cd /tmp
sudo wget https://aws-codedeploy-us-east-2.s3.amazonaws.com/latest/install
sudo chmod +x ./install
sudo ./install auto
sudo service codedeploy-agent start