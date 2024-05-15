#!/bin/bash

echo "Installing JENKINS"
echo "-----------------------------------------------------------------"

sudo apt install openjdk-17-jre

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key

echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

sudo apt-get -y update

sudo apt-get install -y jenkins

echo "JENKINS INSTALLED SUCCESSFULLY"
jenkins --version

echo "------------------------------------------------------------------"
echo "Installing Docker"
echo "------------------------------------------------------------------"

sudo apt install -y docker.io

sudo chown $USER /var/run/docker.sock

echo "DOCKER INSTALLED SUCCESSFULLY"
docker --version

echo "------------------------------------------------------------------"
echo "Installing kubectl"
echo "------------------------------------------------------------------"

curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"

sudo install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl


echo "KUBECTL INSTALLED SUCCESSFULLY"
kubectl version --client

echo "------------------------------------------------------------------"


