#!/bin/bash

set -e

command -V git
command -V vim
command -V zsh

cp ~/.ownconfigs/skel/{.vimrc,.zshrc} ~

rm -rf ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginUpdate +qa

cp -v ~/.ownconfigs/shared/gitconfig ~/.gitconfig
cp -v ~/.ownconfigs/shared/gitignore ~/.gitignore
cp -v ~/.ownconfigs/shared/screenrc ~/.screenrc

function linux_specific {
  command -V dircolors
  command -V urxvt
  command -V xrandr
  command -V i3
  command -V i3status
  command -V i3lock
  command -V dmenu
  command -V xautolock
  command -V pamixer

  mkdir -p ~/.i3
  cp -v ~/.ownconfigs/linux/xinitrc ~/.xinitrc
  cp -v ~/.ownconfigs/linux/Xdefaults ~/.Xdefaults
  cp -v ~/.ownconfigs/linux/i3config ~/.i3/config
  cp -v ~/.ownconfigs/linux/i3status.conf ~/.i3status.conf

  echo 'eval $(dircolors -b ~/.ownconfigs/linux/ls_color_db)' >> ~/.zshrc
  echo 'alias ls=" ls --color=auto"' >> ~/.zshrc
}

uname | grep -qsi linux && linux_specific

