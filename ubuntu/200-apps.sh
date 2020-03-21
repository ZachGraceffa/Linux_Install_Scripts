#!/bin/sh

# Google Chrome
################################################################################
if [ ! -e /etc/apt/trusted.gpg.d/google.gpg ]; then
	wget -qO - https://dl.google.com/linux/linux_signing_key.pub | gpg --dearmor > google.gpg
	sudo mv google.gpg /etc/apt/trusted.gpg.d/google.gpg
fi

if [ ! -e /etc/apt/sources.list.d/google-chrome.list ]; then
	echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list
fi

sudo apt update
sudo apt install -y google-chrome-stable
################################################################################

# Other apps
sudo apt install -y pavucontrol neofetch flameshot libqt5svg5 s-tui

# Restricted addons
sudo apt install -y ubuntu-restricted-extras ubuntu-restricted-addons
sudo fc-cache -f -v

