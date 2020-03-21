# Xanmod Kernel
################################################################################
if [ ! -e /etc/apt/trusted.gpg.d/xanmod-kernel.gpg ]; then
        wget -qO - https://dl.xanmod.org/gpg.key | gpg --dearmor > xanmod-kernel.gpg
        sudo mv xanmod-kernel.gpg /etc/apt/trusted.gpg.d/xanmod-kernel.gpg
fi

if [ ! -e /etc/apt/sources.list.d/xanmod-kernel.list ]; then
        echo "deb http://deb.xanmod.org releases main" | sudo tee /etc/apt/sources.list.d/xanmod-kernel.list
fi

sudo apt update
sudo apt upgrade -y
sudo apt install -y linux-xanmod
################################################################################

