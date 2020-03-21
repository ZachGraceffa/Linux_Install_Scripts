#!/bin/sh

# VirtualBox from Oracle's repo
###############################################################################
#if [ ! -e /etc/apt/trusted.gpg.d/virtualbox.gpg ]; then
#	wget -qO - https://www.virtualbox.org/download/oracle_vbox_2016.asc | gpg --dearmor > virtualbox.gpg
#	sudo mv virtualbox.gpg /etc/apt/trusted.gpg.d/virtualbox.gpg
#fi
#if [ ! -e /etc/apt/sources.list.d/virtualbox.list ]; then
#	echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian disco contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
#fi
#
#sudo apt update
#sudo apt install -y virtualbox-6.0
###############################################################################

# VirtualBox from Ubuntu's repo
sudo apt install -y virtualbox virtualbox-dkms virtualbox-guest-additions-iso

# Add user to the vboxusers group
sudo usermod -a -G vboxusers $USER

