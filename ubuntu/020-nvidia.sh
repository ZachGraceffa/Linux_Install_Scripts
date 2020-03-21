#!/bin/sh

# Add Nvidia driver PPA and install driver
sudo add-apt-repository -y ppa:graphics-drivers/ppa
sudo apt install -y nvidia-driver-440 libvulkan1 libvulkan1:i386 vulkan-utils
sudo apt upgrade -y

# Clear out any old nvidia packages
sudo apt autoremove -y

