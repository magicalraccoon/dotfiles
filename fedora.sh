#!/bin/bash

# Make sure we're up to date
sudo dnf update -y

# rpm-fusion
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# Various programs
sudo dnf install -y zsh dnf-plugins-core vim zsh steam  weechat keepass spotify itch  dwarffortress neofetch autoconf automake pkg-config vlc gcc lsb-core-noarch htop wine VirtualBox powerline

# oh-my-zsh installer
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# powerline-status
pip install --user powerline-status

# oh-my-zsh theme
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

# Move the dotfiles
./fresh_install.sh
