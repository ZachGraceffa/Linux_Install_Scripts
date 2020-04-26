#!/bin/sh

# Copy fonts
mkdir $HOME/.fonts
cp -r ../fonts/* $HOME/.fonts/
sudo fc-cache -r -v

