#!/bin/sh

# Install some core development packages
sudo apt install -y build-essential flex bison cmake cmake-curses-gui apache2-utils

# Visual Studio Code
###############################################################################
if [ ! -e /etc/apt/trusted.gpg.d/microsoft.gpg ]; then
	wget -qO - https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
	sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
fi
if [ ! -e /etc/apt/sources.list.d/vscode.list ]; then
	echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" | sudo tee /etc/apt/sources.list.d/vscode.list
fi
sudo apt update
sudo apt install -y code
###############################################################################

# .NET Core
###############################################################################
if [ ! -e /etc/apt/trusted.gpg.d/microsoft.gpg ]; then
	wget -qO - https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
	sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
fi
if [ ! -e /etc/apt/sources.list.d/dotnet.list ]; then
	echo "deb [arch=amd64] https://packages.microsoft.com/ubuntu/19.04/prod disco main" | sudo tee /etc/apt/sources.list.d/dotnet.list
fi
sudo apt-get update
sudo apt-get install -y apt-transport-https
sudo apt-get update
sudo apt-get install -y dotnet-sdk-3.1
###############################################################################

