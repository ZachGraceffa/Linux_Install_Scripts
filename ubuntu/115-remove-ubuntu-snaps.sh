# Install flatpak support in the gnome software center
sudo apt install -y gnome-tweaks gnome-software-plugin-flatpak

# Remove and replace snaps
sudo snap remove gnome-system-monitor
sudo snap remove gnome-calculator
sudo snap remove gnome-logs
sudo snap remove gnome-characters
sudo apt install -y gnome-system-monitor gnome-calculator gnome-logs gnome-characters

