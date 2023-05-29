#!/usr/bin/env bash


echo "Setting up Archaic Lord's wallpapers"
echo "WARNING this script requries SUDO to link wallpaers to system locations"


echo "current_dir= $(pwd)"

LINUX_DISTRO=$( hostnamectl | grep -i "Operating System" | awk '{print $3}'
)

echo "LINUX_DISTRO=${LINUX_DISTRO}"

case $LINUX_DISTRO in
    Fedora)
	echo "Fedora detected"
	echo "Linking wallpapers from $(pwd)/wallpapers to /usr/share/backgrounds/"
	cp $(pwd)/wallpapers/backgrounds/* ~/.local/share/backgrounds
	;;    
esac
