#!/usr/bin/env bash


echo "Setting up Archaic Lord's wallpapers"
echo "current_dir= $(pwd)"

LINUX_DISTRO=$(grep PRETTY_NAME /etc/*release | cut -d "=" -f 2 | awk '{print $1}')

echo "LINUX_DISTRO=${LINUX_DISTRO}"

