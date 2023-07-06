#!/bin/bash

## Kali Setup script

sudo apt-get clean -y
sudo apt-get update
sudo apt full-upgrade -y
sudo apt-get autoremove -y

sudo apt-get-cache search kali

# -~-~-~
# Install Python
sudo apt-get install -y python3

# Install Pip
sudo apt-get install -y python3-pip
sudo apt-get install -y python3-dev

# Install Go - https://golang.org/doc/install
sudo wget -P /opt/sys_tool_install/ https://golang.org/dl/go1.20.linux-amd64.tar.gz
sudo tar -C /usr/local -xzf /opt/sys_tool_install/go1.20.linux-amd64.tar.gz
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin

# Install VSCode
sudo apt-get install -y software-properties-common apt-transport-https wget
sudo wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt-get update
sudo apt-get install -y code 

# ~-~-~-~-~-~-~-
# Tools

sudo apt-get install -y gobuster
sudo apt-get install -y ffuf
sudo apt-get install -y curl 

# ~-~-~-~-~-~-~-
# Linux Privesc
sudo mkdir /opt/__PRIV_ESC/_LINUX/0-Start_linPEAS-carlospolop
sudo wget https://github.com/carlospolop/PEASS-ng/releases/download/20220901/linpeas.sh  /opt/__PRIV_ESC/_LINUX/0-Start_linPEAS-carlospolop/


# ~-~-~-~-
# Clean-up
cd /opt/
sudo rm -rf /opt/sys_tool_install

echo "\n\n\n Rebooting in 20 seconds\n"
sleep 20
sudo reboot

