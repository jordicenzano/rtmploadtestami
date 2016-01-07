#!/bin/bash

#Jordi Cenzano (2015)

sudo yum update -y

#Install docker
sudo yum install -y docker
sudo service docker start

#Add ec2-user  to docker execution without sudo
sudo usermod -a -G docker ec2-user

#Install apache
sudo yum install httpd -y
sudo chkconfig httpd on
#sudo /etc/init.d/httpd start

#Add user apache to docker execution without sudo
sudo usermod -a -G docker apache
