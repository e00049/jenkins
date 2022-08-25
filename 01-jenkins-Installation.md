# Installation Jankins in Ubuntu Machine 

# Install Java 
sudo apt install openjdk-11-jdk -y

sudo java --version

# add GPG keys:
sudo wget -p -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -

# add the Jenkins package address to the sources list
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'

sudo apt update

# Install Jenkins 
sudo apt install jenkins -y



# User DATA

#!/usr/bin/env bash

sudo apt install openjdk-11-jdk -y
sudo java --version
sudo wget -p -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt update
sudo apt install jenkins -y

.
.
.

Source Website: https://linuxhint.com/install-jenkins-on-ubuntu/
