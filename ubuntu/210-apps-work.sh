#!/bin/sh

# Teams (native .deb version)
################################################################################
#if [ ! -e /etc/apt/trusted.gpg.d/microsoft.gpg ]; then
#	wget -qO - https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
#	sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
#fi
#if [ ! -e /etc/apt/sources.list.d/teams.list ]; then
#	echo "deb [arch=amd64] https://packages.microsoft.com/repos/ms-teams stable main" | sudo tee /etc/apt/sources.list.d/teams.list
#fi
#sudo apt update
#sudo apt install -y teams
################################################################################

