#!/bin/sh

# Install the Arc theme
sudo apt install -y arc-theme

# Setup Flatpak applications to use the Arc-Dark theme
flatpak install -y flathub org.gtk.Gtk3theme.Arc-Dark

# Reference: this code snippet lists all available themes on Flathub
# flatpak remote-ls flathub | grep org.gtk.Gtk3theme

# Install the Papirus icon theme (high coverage)
sudo add-apt-repository -y ppa:papirus/papirus
sudo apt-get update
sudo apt-get install -y papirus-icon-theme

