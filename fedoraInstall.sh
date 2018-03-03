#!/bin/bash

sudo dnf update -y

sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo rpm --import https://dl.itch.ovh/archive.key
wget https://bintray.com/itchio/rpm/rpm -O itchio.repo
sudo mv itchio.repo /etc/yum.repos.d/

### Fedora should have wine-staging by default, need to check ###
#sudo dnf config-manager --add-repo https://repos.wine-staging.com/wine/fedora/26/winehq.repo


sudo dnf config-manager --add-repo=http://negativo17.org/repos/fedora-spotify.repo
sudo dnf copr enable konimex/neofetch -y

sudo dnf install -y http://linuxdownload.adobe.com/adobe-release/adobe-release-x86_64-1.0-1.noarch.rpm

sudo dnf install -y zsh dnf-plugins-core vim zsh steam  weechat keepass spotify itch gnome-tweak-tool dwarffortress gnome-themes-standard gtk-murrine-engine neofetch autoconf automake pkg-config gtk3-devel flash-plugin vlc chromium gcc lsb-core-noarch chrome-gnome-shell htop wine VirtualBox powerline

wget https://github.com/atom/atom/releases/download/v1.23.1/atom.x86_64.rpm
sudo rpm -i atom.x86_64.rpm
rm atom.x86_64.rpm

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


### I keep switching back and forth between SolArc-Dark and Adwaita-Dark ###
#sudo rm -rf /usr/share/themes/{SolArc,SolArc-Darker,SolArc-Dark}
#rm -rf ~/.local/share/themes/{SolArc,SolArc-Darker,SolArc-Dark}
#rm -rf ~/.themes/{SolArc,SolArc-Darker,SolArc-Dark}
#git clone https://github.com/apheleia/solarc-theme --depth 1 && cd solarc-theme
#./autogen.sh --prefix=/usr
#sudo make install
#cd
#rm -rf solarc-theme

pip install --user powerline-status

git clone https://github.com/altercation/vim-colors-solarized.git
cd vim-colors-solarized/colors
mkdir ~/.vim/
mkdir ~/.vim/colors/
mv solarized.vim ~/.vim/colors/
cd
rm -rf vim-colors/solarized

git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k

echo "All done!"
exit

### fstab ###
# 10.0.0.4:/media/streaming/Storage  /home/raccoon/Storage  nfs  defaults 0 0
# 10.0.0.4:/media/streaming/Video  /home/raccoon/Videos  nfs  defaults 0 0
# 10.0.0.4:/media/streaming/Music  /home/raccoon/Music  nfs  defaults 0 0


# powerline-reload

### disable wayland 'cause it's not ready yet!! ###
# sudo vim /etc/gdm/custom.conf

### manual installs ###
#hack font

### include ###
#.bashrc
#.ssh/
#.zshrc
#.weechat/
#.vimrc
#.vim/
#.atom/
#.config/neofetch
