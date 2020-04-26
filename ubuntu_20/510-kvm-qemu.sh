#!/bin/sh

# Install KVM/QEMU support along with virt-manager
sudo apt install -y qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils virt-manager

# Add user to the correct groups
sudo usermod -a -G libvirt $USER
sudo usermod -a -G libvirt-qemu $USER

