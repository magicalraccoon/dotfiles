#!/bin/bash

# Make sure we're up to date
sudo dnf update -y

# rpm-fusion
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Spotify repo
sudo dnf config-manager --add-repo=https://negativo17.org/repos/fedora-spotify.repo

# Various programs
sudo dnf install -y git zsh dnf-plugins-core firefox vim steam weechat keepass spotify-client itch dwarffortress neofetch autoconf automake vlc gcc htop wine VirtualBox powerline

# atom
sudo dnf install $(curl -sL "https://api.github.com/repos/atom/atom/releases/latest" | grep "https.*atom.x86_64.rpm" | cut -d '"' -f 4)


# oh-my-zsh installer
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# powerline-status
pip install --user powerline-status

# oh-my-zsh theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Move the dotfiles
./dotfiles.sh
