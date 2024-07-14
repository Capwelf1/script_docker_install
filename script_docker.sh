#!/bin/bash 
# remove all older version of docker
#sudo yum update  
sudo yum remove docker docker-common docker-selinux docker-engine
# Install all requiered packages 
sudo yum install -y  yum-utils device-mapper-persistent-data lvm2 

#configure docker repository
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# Install Docker-ce
sudo yum install docker-ce -y 

# start Docker 
sudo systemctl start docker 
sudo systtemctl enable docker 
