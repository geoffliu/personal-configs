#!/bin/sh

set -e

sh ~/.ownconfigs/bin/check_commands.sh

cp ~/.ownconfigs/skel/{.vimrc,.zshrc} ~

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginUpdate +qa

ln -sv ~/.ownconfigs/gitconfig ~/.gitconfig
ln -sv ~/.ownconfigs/gitignore ~/.gitignore
ln -sv ~/.ownconfigs/screenrc ~/.screenrc

function linux_specific {
  command -V dircolors

  ln -sv ~/.ownconfigs/linux/xinitrc ~/.xinitrc
  ln -sv ~/.ownconfigs/linux/Xdefaults ~/.Xdefaults
  mkdir ~/.i3
  ln -sv ~/.ownconfigs/linux/i3config ~/.i3/config
  ln -sv ~/.ownconfigs/linux/i3status.conf ~/.i3status.conf

  echo 'eval $(dircolors -b ~/.ownconfigs/linux/ls_color_db)' >> ~/.zshrc
  echo 'alias ls=" ls --color=auto"' >> ~/.zshrc
}

uname | grep -qsi linux && linux_specific

