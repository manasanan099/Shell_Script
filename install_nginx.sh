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


