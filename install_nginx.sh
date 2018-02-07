#!/bin/bash

#install epel-release
sudo yum install -y epel-release

#install nginx
yum install -y nginx

#start and enable nginx
systemctl start nginx
systemctl enable nginx

#creat firewall http
firewall-cmd --permanent --zone=public --add-service=http

#https
firewall-cmd --permanent --zone=public --add-service=https

#reload
firewall-cmd --reload

#curl node repo
curl https://raw.githubusercontent.com/creationix/nvm/v0.13.1/install.sh | bash

#.bash_prifile
source ~/.bash_profile

#install node version 9.5.0
nvm install 9.5.0

#use node v9.5.0
nvm use 9.5.0

#set default node version
nvm alias default v9.5.0



