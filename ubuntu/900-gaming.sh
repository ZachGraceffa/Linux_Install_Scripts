#!/bin/sh

# Steam
sudo apt install python-apt

wget -q https://steamcdn-a.akamaihd.net/client/installer/steam.deb
sudo dpkg -i steam.deb
rm steam.deb

# Some libraries that are neccessary for some native Linux games
sudo apt install -y libc++1 libc++abi1 libgconf-2-4

# Some libraries that are neccessary to build FAudio with ffmpeg support
# this enhances Valve's Steamplay library Proton
sudo apt install -y build-essential cmake cmake-curses-gui ffmpeg libavcodec-dev libavutil-dev libsdl2-de

# Wine from official repos
###############################################################################
if [ ! -e /etc/apt/trusted.gpg.d/winehq-devel.gpg ]; then
        wget -qO - https://dl.winehq.org/wine-builds/winehq.key | gpg --dearmor > winehq.gpg
        sudo mv winehq.gpg /etc/apt/trusted.gpg.d/winehq.gpg
fi
if [ ! -e /etc/apt/sources.list.d/winehq.list ]; then
        echo "deb https://dl.winehq.org/wine-builds/ubuntu/ eoan main" | sudo tee /etc/apt/sources.list.d/winehq.list
fi

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install -y --install-recommends winehq-stable winetricks
###############################################################################

# Lutris
sudo add-apt-repository -y ppa:lutris-team/lutris
sudo apt-get install -y lutris

