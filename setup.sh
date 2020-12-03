#!/bin/bash

set -e

command -V getopts

IncludeNvim=0
IncludeVim=0
UseCtags=0

while getopts "nvWt" Opt; do
  case $Opt in
    n)
      IncludeNvim=1
      ;;
    v)
      IncludeVim=1
      ;;
    t)
      UseCtags=1
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
command -V screen
command -V lesskey

mkdir -p ~/bin
cp ~/.ownconfigs/scripts/* ~/bin

mkdir -p ~/.ownconfigs/extras
touch ~/.ownconfigs/extras/vimrc
touch ~/.ownconfigs/extras/zshrc
touch ~/.ownconfigs/extras/dmenu_commands

cat > ~/.zshrc << EOF
source ~/.ownconfigs/shared/zshrc
source ~/.ownconfigs/extras/zshrc
EOF

mkdir -p ~/.zsh_functions
cp -v ~/.ownconfigs/shared/zsh_functions/* ~/.zsh_functions

cp -v ~/.ownconfigs/shared/profile ~/.profile

function ensure_ctags {
  command -V ctags
  mkdir -p ~/.ctags.d
  cp ~/.ownconfigs/shared/kotlin.ctags ~/.ctags.d
}

if [[ $IncludeVim -eq 1 ]]; then
  command -V fzf
  command -V vim

  rm -rf ~/.vim
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  cp -v ~/.ownconfigs/skel/vimrc ~/.vimrc
  vim +PluginUpdate +qa

  echo 'source ~/.ownconfigs/shared/vim/workman.vim' >> ~/.vimrc

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

  echo 'source ~/.ownconfigs/shared/vim/workman.vim' >> ~/.config/nvim/init.vim

  if [[ $UseCtags -eq 1 ]]; then
    ensure_ctags
  else
    echo 'let g:gutentags_enabled=0' >> ~/.config/nvim/init.vim
  fi
fi

lesskey ~/.ownconfigs/shared/lesskey_workman
echo 'source ~/.ownconfigs/shared/zshrc_workman' >> ~/.zshrc

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

