#!/bin/sh

# Setup oh-my-zsh
sudo apt install -y zsh
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
cp -v ../dotfiles/.zshrc $HOME/

