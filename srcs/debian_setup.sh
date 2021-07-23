#!/bin/bash

#echo -n "Setting up vbox additions";
#apt install -y build-essential dkms linux-headers-$(uname -r);
#bash /media/cdrom/VBoxLinuxAdditions.run;

echo -n "?========Setting up Docker=======?";
apt-get remove docker docker-engine docker.io containerd runc;
apt-get update;
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release;
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg;
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null;
apt-get update;
apt-get install docker-ce docker-ce-cli containerd.io;
docker run hello-world;
