#!/bin/bash

set -e

command -V getopts

UseWorkman=1
IncludeNvim=0
IncludeVim=1

while getopts "nVW" Opt; do
  case $Opt in
    W)
      UseWorkman=0
      ;;
    n)
      IncludeNvim=1
      ;;
    V)
      IncludeVim=0
      ;;
    *)
      echo "Bad arg"
      exit 1
      ;;
  esac
done

command -V git
command -V zsh
command -V less

mkdir -p ~/bin
cp ~/.ownconfigs/scripts/* ~/bin

mkdir -p ~/.ownconfigs/extras
touch ~/.ownconfigs/extras/vimrc
touch ~/.ownconfigs/extras/zshrc
touch ~/.ownconfigs/extras/dmenu_commands
cp -v ~/.ownconfigs/skel/zshrc ~/.zshrc

if [[ $IncludeVim -eq 1 ]]; then
  command -V fzf
  command -V vim
  command -V ctags

  rm -rf ~/.vim
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  cp -v ~/.ownconfigs/skel/vimrc ~/.vimrc
  vim +PluginUpdate +qa

  if [[ $UseWorkman -eq 1 ]]; then
    echo 'source ~/.ownconfigs/shared/vim/workman.vim' >> ~/.vimrc
  else
    echo 'source ~/.ownconfigs/shared/vim/qwerty.vim' >> ~/.config/nvim/init.vim
  fi
fi

if [[ $IncludeNvim -eq 1 ]]; then
  command -V fzf
  command -V nvim
  command -V ctags

  rm -rf ~/.config/nvim
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
  cp -v ~/.ownconfigs/skel/nvimrc ~/.config/nvim/init.vim
  nvim +PluginUpdate +qa

  if [[ $UseWorkman -eq 1 ]]; then
    echo 'source ~/.ownconfigs/shared/vim/workman.vim' >> ~/.config/nvim/init.vim
  else
    echo 'source ~/.ownconfigs/shared/vim/qwerty.vim' >> ~/.config/nvim/init.vim
  fi
fi

if [[ $UseWorkman -eq 1 ]]; then
  command -V lesskey
  lesskey ~/.ownconfigs/shared/lesskey_workman
  echo 'source ~/.ownconfigs/shared/zshrc_workman' >> ~/.zshrc
fi

cp -v ~/.ownconfigs/shared/gitconfig ~/.gitconfig
cp -v ~/.ownconfigs/shared/gitignore ~/.gitignore
cp -v ~/.ownconfigs/shared/screenrc ~/.screenrc

function linux_specific {
  command -V dircolors
  echo 'eval $(dircolors -b ~/.ownconfigs/linux/ls_color_db)' >> ~/.zshrc
  echo 'alias ls=" ls --color=auto"' >> ~/.zshrc
}

function mac_specific {
  echo 'alias ls=" ls -G"' >> ~/.zshrc
}

uname | grep -qsi linux && linux_specific
uname | grep -qsi darwin && mac_specific

