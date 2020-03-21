#!/bin/sh

# Chrome Installation
###############################################################################

# Copy the Chrome install/update script to $HOME/bin
cp ./supporting/chrome/install-update-chrome.sh $HOME/bin

# Run the install/update script
chmod +x $HOME/bin/install-update-chrome.sh
$HOME/bin/install-update-chrome.sh
###############################################################################

