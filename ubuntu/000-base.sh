#!/bin/sh

GIT_USERNAME="Robert Strube"
GIT_EMAIL="rstrube@gmail.com"

# Update system
sudo apt update
sudo apt upgrade -y && sudo apt dist-upgrade -y
sudo apt autoremove -y

# Install some critical packages
sudo apt install -y neovim htop git dkms exfat-fuse exfat-utils jmtpfs linux-tools-generic msr-tools devmem2 apt-file

# Set git configuration
git config --global user.name $GIT_USERNAME
git config --global user.email $GIT_EMAIL

# Install flatpak
sudo add-apt-repository -y ppa:alexlarsson/flatpak
sudo apt install -y flatpak
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

