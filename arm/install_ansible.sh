#!/bin/bash

# Update all packages that have available updates.
sudo yum update -y

# Install Python 3 and pip.
sudo yum install -y python3-pip

# Upgrade pip3.
sudo pip3 install --upgrade pip

# Install Ansible.
pip3 install "ansible==2.9.17"

# Install Ansible azure_rm module for interacting with Azure.
pip3 install ansible[azure]

mkdir ~/.azure
echo [default] >> ~/.azure/credentials
echo "subscription_id=<your-subscription_id>" >> ~/.azure/credentials
echo "client_id=<security-principal-appid>" >> ~/.azure/credentials
echo "secret=<security-principal-password>" >> ~/.azure/credentials
echo "tenant=<security-principal-tenant>" >> ~/.azure/credentials
