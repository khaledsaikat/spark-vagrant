#!/usr/bin/env bash

echo "Set locale"
sudo echo 'LANGUAGE="en_US.UTF-8"' >> /etc/default/locale
sudo echo 'LC_ALL="en_US.UTF-8"' >> /etc/default/locale
sudo locale-gen en_US.UTF-8
sudo dpkg-reconfigure locales

echo "Get updates..."
sudo apt-get update -y > /dev/null

#echo "Upgrade packages..."
#sudo apt-get upgrade -y  > /dev/null

echo "Installing Git..."
sudo apt-get install git -y > /dev/null

echo "Installing nfs prerequisites..."
sudo apt-get install nfs-common portmap -y > /dev/null
