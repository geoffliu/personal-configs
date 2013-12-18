#!/bin/sh

set -e

command -V git
command -V vim
command -V zsh

cp ~/.ownconfigs/skel/{.vimrc,.zshrc} ~

git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
vim +BundleUpdate +qa

ln -sv ~/.ownconfigs/gitconfig ~/.gitconfig
