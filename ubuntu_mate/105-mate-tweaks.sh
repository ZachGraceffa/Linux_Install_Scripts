#!/bin/sh

# Install Redshift for "night light" functionality in Mate
sudo apt install -y redshift-gtk geoclue-2.0

# Fix an issue with Geoclue
echo "" | sudo tee -a /etc/geoclue/geoclue.conf
echo "[redshift]" | sudo tee -a /etc/geoclue/geoclue.conf
echo "allowed=true" | sudo tee -a /etc/geoclue/geoclue.conf
echo "system=false" | sudo tee -a /etc/geoclue/geoclue.conf

sudo systemctl restart geoclue.service

# Remove mate-netbook, because it's buggy with client side decorations
sudo apt remove -y mate-netbook

