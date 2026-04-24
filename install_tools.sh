#!/bin/bash

# Package List
pacman_packages=(
    "hostapd"
    "dnsmasq"
    "iproute2"
    "iw"
)

aur_packages=(
    "smcroute"
)

# update package list
echo "Updating package list..."
sudo pacman -Sy

echo "Installing packages..."
sudo pacman -S --needed --noconfirm "${packages[@]}"

yay -S --needed --noconfirm "${aur_packages[@]}"

if [ $? -eq 0 ]; then
    echo "All packages installed successfully."
else
    echo "Error installing packages. Please check the output above for details."
    exit 1
fi