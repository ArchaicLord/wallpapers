#!/usr/bin/env bash


echo "Setting up Archaic Lord's wallpapers"
echo "WARNING this script requries SUDO to link wallpaers to system locations"


echo "current_dir= $(pwd)"

LINUX_DISTRO=$(grep PRETTY_NAME /etc/*release | cut -d "=" -f 2 | awk '{print $1}')

echo "LINUX_DISTRO=${LINUX_DISTRO}"

case $LINUX_DISTRO in
    Fedora)
	echo "Fedora detected"
	echo "Linking wallpapers from $(pwd) to /usr/share/backgrounds/"
	sudo ln -s $pwd/wallpapers/ /usr/share/backgrounds/

	;;
    
esac
