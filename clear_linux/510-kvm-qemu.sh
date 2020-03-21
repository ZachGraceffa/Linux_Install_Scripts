#!/bin/sh

# KVM QEMU Installation
sudo swupd bundle-add kernel-kvm kvm-host virt-manager-gui
sudo usermod -G kvm -a $USER
sudo systemctl enable libvirtd

