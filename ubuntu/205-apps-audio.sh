#!/bin/sh

# A great application that can apply EQ rules to all your audio output
sudo apt install pulseeffects

# Copy the "Perfect-EQ" preset to PulseEffects configuration directory
mkdir -p ~/.config/PulseEffects/output
cp ../cross_distro/applications/pulseeffects/Perfect-EQ.json ~/.config/PulseEffects/output/

echo "\n"
echo "Note: you'll still need to open PulseEffects and select the Perfect EQ preset for changes to take effect.  It's also recommended that you configure PulseEffects to start automatically and also apply the preset automatically."

