#!/bin/bash

set -e

command -V getopts

UseWorkman=0
IncludeNvim=0
UseXServer=0

while getopts ":nwx" Opt; do
  case $Opt in
    w)
      UseWorkman=1
      ;;
    n)
      command -V nvim
      IncludeNvim=1
      ;;
    x)
      UseXServer=1
      ;;
    *)
      echo "Bad arg"
      exit 1
      ;;
  esac
done

command -V git
command -V vim
command -V zsh
command -V less

mkdir -p ~/.ownconfigs/extras
touch ~/.ownconfigs/extras/vimrc
touch ~/.ownconfigs/extras/zshrc
cp -v ~/.ownconfigs/skel/vimrc ~/.vimrc
cp -v ~/.ownconfigs/skel/zshrc ~/.zshrc

rm -rf ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginUpdate +qa

if [[ $UseWorkman -eq 1 ]]; then
  command -V lesskey
  lesskey ~/.ownconfigs/shared/lesskey_workman
  echo 'source ~/.ownconfigs/shared/vim/workman.vim' >> ~/.vimrc
  echo 'source ~/.ownconfigs/shared/zshrc_workman' >> ~/.zshrc
fi

if [[ $IncludeNvim -eq 1 ]]; then
  rm -rf ~/.config/nvim
  mkdir -p ~/.config/nvim
  cp -v ~/.ownconfigs/skel/nvimrc ~/.config/nvim/init.vim
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
  nvim +PluginUpdate +qa

  if [[ $UseWorkman -eq 1 ]]; then
    echo 'source ~/.ownconfigs/shared/vim/workman.vim' >> ~/.config/nvim/init.vim
  fi
fi

cp -v ~/.ownconfigs/shared/gitconfig ~/.gitconfig
cp -v ~/.ownconfigs/shared/gitignore ~/.gitignore
cp -v ~/.ownconfigs/shared/screenrc ~/.screenrc

function linux_specific {
  command -V dircolors
  echo 'eval $(dircolors -b ~/.ownconfigs/linux/ls_color_db)' >> ~/.zshrc
  echo 'alias ls=" ls --color=auto"' >> ~/.zshrc

  if [[ $UseXServer -eq 1 ]]; then
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
  fi
}

function mac_specific {
  echo 'alias ls=" ls -G"' >> ~/.zshrc
}

uname | grep -qsi linux && linux_specific
uname | grep -qsi darwin && mac_specific

