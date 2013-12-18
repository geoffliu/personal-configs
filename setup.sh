#!/bin/sh

set -e

echo "Looking for git in PATH"
command -v git
command -v vim
command -v zsh

cp ~/.ownconfigs/skel/{.vimrc,.zshrc} ~

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleUpdate +qa

ln -sv ~/.ownconfigs/gitconfig ~/.gitconfig

# TODO: Is it always under /bin?
chsh -s /bin/zsh
