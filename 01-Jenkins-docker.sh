#!/usr/bin/env bash

useradd -s /bin/bash -m e00049
echo -e "z\nz" | passwd e00049 >/dev/null 2>&1
echo "e00049 ALL=(ALL)      NOPASSWD: ALL" >> /etc/sudoers
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sed -i 's/PermitRootLogin forced-commands-only/#PermitRootLogin forced-commands-only/g' /etc/ssh/sshd_config
systemctl restart ssh >/dev/null 2>&1
systemctl restart sshd >/dev/null 2>&1

sudo hostnamectl set-hostname jenkins.master.com

sudo apt update 

sudo apt install apt-transport-https ca-certificates curl software-properties-common -y

sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

sudo apt install docker-ce -y

sudo usermod -aG docker e00049

sudo docker run -p 8080:8080 --name=jenkins-master -d -v jenkins-volume:/var  jenkins/jenkins
