#!/bin/sh

# Install ufraw-batch that can be used to convert RAW images to PNGs for thumbnail purposes
###############################################################################
sudo apt install -y ufraw-batch

echo "[Thumbnailer Entry]" | sudo tee /usr/share/thumbnailers/raw.thumbnailer
echo "TryExec=ufraw-batch" | sudo tee -a /usr/share/thumbnailers/raw.thumbnailer
echo "Exec=ufraw-batch --silent --size %s --out-type=png --noexif --output=%o --overwrite --embedded-image %i" | sudo tee -a /usr/share/thumbnailers/raw.thumbnailer
echo "MimeType=image/x-canon-cr2;image/x-canon-crw;image/x-minolta-mrw;image/x-nikon-nef;image/x-pentax-pef;image/x-panasonic-rw2;image/x-samsung-srw;image/x-olympus-orf" | sudo tee -a /usr/share/thumbnailers/raw.thumbnailer

nautilus -q
rm -rf $HOME/.cache/thumbnails/* $HOME/.thumbnails/*
###############################################################################

