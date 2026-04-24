#!/bin/bash

# Package List
packages=(
    "hostapd"
    "dnsmasq"
    "iproute2"
    "iw"
    "smcroute"
)

# update package list
echo "Updating package list..."
sudo pacman -Sy