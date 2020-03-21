#!/bin/sh

# Download, build, and install the kernel module
sudo mkdir /usr/src/tuxedo_keyboard-2.0.0
git clone https://github.com/tuxedocomputers/tuxedo-keyboard.git /var/tmp/tuxedo-keyboard
cd /var/tmp/tuxedo-keyboard
sudo cp -R . /usr/src/tuxedo_keyboard-2.0.0
cd $HOME
rm -rf /var/tmp/tuxedo-keyboard

sudo dkms add -m tuxedo_keyboard -v 2.0.0
sudo dkms build -m tuxedo_keyboard -v 2.0.0
sudo dkms install -m tuxedo_keyboard -v 2.0.0
sudo modprobe tuxedo_keyboard

echo "tuxedo_keyboard" | sudo tee -a /etc/modules
echo "options tuxedo_keyboard mode=0 color_left=0xFFFFFF color_center=0xFFFFFF color_right=0xFFFFFF brightness=50" | sudo tee /etc/modprobe.d/tuxedo_keyboard.conf

# To remove and rebuild for a specific kernel
# sudo dkms remove -m tuxedo_keyboard -v 2.0.0 -k $(uname -r)
# sudo dkms install -m tuxedo_keyboard -v 2.0.0 -k $(uname -r)

# To completely remove the kernel module
# sudo dkms remove -m tuxedo-keyboard -v 2.0.0 --all
# sudo rm -rf /usr/src/tuxedo-keyboard-2.0.0
# sudo rm /etc/modprobe.d/tuxedo_keyboard.conf