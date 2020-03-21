#!/bin/sh

# Mesa PPA from Valve developer [https://launchpad.net/~kisak/+archive/ubuntu/kisak-mesa]
###############################################################################
sudo add-apt-repository -y ppa:kisak/kisak-mesa
sudo apt upgrade -y && sudo apt dist-upgrade -y
###############################################################################

# Also install the i386 packages for better gaming support
sudo apt install -y libgl1-mesa-dri:i386 libgl1-mesa-glx:i386 mesa-vulkan-drivers mesa-vulkan-drivers:i386 mesa-utils vulkan-utils

