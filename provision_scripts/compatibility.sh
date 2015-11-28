#!/usr/bin/env bash

ubuntu_version=$(lsb_release -sr)

##
# For version 12.04
##
if [ "12.04" == "$ubuntu_version" ]; then
    # Install add-apt-repository
    sudo apt-get install python-software-properties -y
fi
