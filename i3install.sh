#!/bin/bash

#Installs
sudo apt-get update && sudo apt-get upgrade && sudo apt-get install i3 i3blocks i3-wm dunst i3lock i3status suckless-tools yabar vim git tmux zsh snapd tree neofetch tree stow gedit cmus curl wget && cd
sudo apt-get install libcairo2-dev libpango1.0-dev libconfig-dev libxcb-randr0-dev libxcb-ewmh-dev libgdk-pixbuf2.0-dev fonts-font-awesome aptitude && cd

#media
snap install spotify && cd

#brave browser
sudo apt install apt-transport-https curl
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update && sudo apt install brave-browser

#wallpaper
mkdir wallpapers && git clone https://github.com/shlap/theme && cd theme && cp *.{png,jpg} ~/wallpapers && cd
 
#make dotfiles
git clone https://github.com/shlap/.dotfiles.git
rm .bashrc .zshrc
cd .dotfiles && stow * && cd


