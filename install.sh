#!/bin/bash

sudo apt-get upgrade

sudo echo "deb http://ftp.de.debian.org/debian trixie main non-free" | sudo tee -a /etc/apt/sources.list

sudo apt-get upgrade 
   
sudo apt-get install linux-image-$(uname -r|sed 's,[^-]*-[^-]*-,,') linux-headers-$(uname -r|sed 's,[^-]*-[^-]*-,,') broadcom
-sta-dkms

sudo apt install kitty neovim starship firefox tmux git wget curl zip unzip python3 python3-pip python3-venv dkms linux-headers-amd64
 network-manager && sudo apt install broadcom-sta-dkms

sudo apt install gdm

sudo system ctl enable gdm

sudo reboot now

