#!/bin/sh

GIT_USERNAME="ZachGraceffa"
GIT_EMAIL="zachgraceffa@gmail.com"

# Update system
sudo apt update
sudo apt upgrade -y && sudo apt dist-upgrade -y
sudo apt autoremove -y

# Install some critical packages
sudo apt install -y htop iotop git dkms jmtpfs linux-tools-generic msr-tools devmem2 apt-file

# Set git configuration
git config --global user.name $GIT_USERNAME
git config --global user.email $GIT_EMAIL

