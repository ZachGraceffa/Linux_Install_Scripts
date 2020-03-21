#!/bin/sh

# Disable auto updates
sudo swupd autoupdate --disable

# Manually check for updates and then perform the update
sudo swupd check-update
sudo swupd update

# Install some critical bundles
sudo swupd bundle-add wget performance-tools bc rsync

# Install flatpak
sudo swupd bundle-add flatpak

# Note: Clear Linux has already added flathub remote
#sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Make $HOME/bin
mkdir $HOME/bin

