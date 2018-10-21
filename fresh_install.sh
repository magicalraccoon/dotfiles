#!/bin/sh
REPODIR=$(dirname "$(readlink -f "$0")")

# atom #
echo "Linking Atom"
ln -sf $REPODIR/.atom/packages ~/.atom/

# alacrity #
echo "Linking Alacritty"
ln -sf $REPODIR/.config/alacritty/ ~/.config/

#neofetch #
echo "Linking neofetch"
ln -sf $REPODIR/.config/neofetch/ ~/.config/

# vim #
echo "Linking vim"
ln -sf $REPODIR/.vim/ ~/
ln -sf $REPODIR/.vimrc ~/

# tmux #
echo "Linking tmux"
ln -sf $REPODIR/.tmux.conf ~/

# weechat #
echo "Linking weechat"
ln -sf $REPODIR/.weechat ~/

# bashrc #
echo "Linking .bashrc"
ln -sf $REPODIR/.bashrc ~/

# zshrc #
echo "Linking .zshrc"
ln -sf $REPODIR/.zshrc ~/
