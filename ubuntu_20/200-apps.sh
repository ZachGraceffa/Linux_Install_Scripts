#!/bin/sh

# Other apps
sudo apt install -y neofetch flameshot guake

# Restricted addons
sudo apt install -y ubuntu-restricted-extras ubuntu-restricted-addons
sudo fc-cache -f -v

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

# Guake Configure
################################################################################

/usr/bin/guake &
sleep 5 # let main guake process start and initialize D-Bus session

# adjust tab which was opened by default
guake --rename-tab="iotop" --execute="/usr/bin/iotop"

# create new tab, start bash session in it
guake --new-tab --execute="/usr/bin/bash"
# and then execute htop, renaming the tab to "htop"
guake --execute="/usr/bin/htop" --rename-current-tab="htop"

################################################################################

