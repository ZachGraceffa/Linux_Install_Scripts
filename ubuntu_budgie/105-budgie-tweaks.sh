#!/bin/sh

# Setup the "Budgie Backports" PPA to get upstream updates for Budgie DE
sudo add-apt-repository -y ppa:ubuntubudgie/backports
sudo apt upgrade -y

# Install the gnome-disk-utility and gnome-system-monitor
sudo apt install -y gnome-disk-utility gnome-system-monitor

# Install a budgie applet for system monitoring (CPU, Mem, Temp, etc.)
sudo apt install -y budgie-sysmonitor-applet

