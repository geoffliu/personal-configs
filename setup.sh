#!/bin/bash

set -e

command -V getopts

UseWorkman=1
IncludeNvim=0
IncludeVim=1
UseCtags=1

while getopts "nVWT" Opt; do
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
    T)
      UseCtags=0
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

function ensure_ctags {
  command -V ctags
  CloneDir=$(mktemp -d)
  git clone https://github.com/jb55/typescript-ctags.git "$CloneDir"
  mkdir -p ~/.ctags.d
  cp "$CloneDir/.ctags" ~/.ctags.d/typescript.ctags
}

if [[ $IncludeVim -eq 1 ]]; then
  command -V fzf
  command -V vim

  rm -rf ~/.vim
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  cp -v ~/.ownconfigs/skel/vimrc ~/.vimrc
  vim +PluginUpdate +qa

  if [[ $UseWorkman -eq 1 ]]; then
    echo 'source ~/.ownconfigs/shared/vim/workman.vim' >> ~/.vimrc
  else
    echo 'source ~/.ownconfigs/shared/vim/qwerty.vim' >> ~/.vimrc
  fi

  if [[ $UseCtags -eq 1 ]]; then
    ensure_ctags
  else
    echo 'let g:gutentags_enabled=0' >> ~/.vimrc
  fi
fi

if [[ $IncludeNvim -eq 1 ]]; then
  command -V fzf
  command -V nvim

  rm -rf ~/.config/nvim
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
  cp -v ~/.ownconfigs/skel/nvimrc ~/.config/nvim/init.vim
  nvim +PluginUpdate +qa

  if [[ $UseWorkman -eq 1 ]]; then
    echo 'source ~/.ownconfigs/shared/vim/workman.vim' >> ~/.config/nvim/init.vim
  else
    echo 'source ~/.ownconfigs/shared/vim/qwerty.vim' >> ~/.config/nvim/init.vim
  fi

  if [[ $UseCtags -eq 1 ]]; then
    ensure_ctags
  else
    echo 'let g:gutentags_enabled=0' >> ~/.config/nvim/init.vim
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

