#!/bin/bash

set -e
CurrentPath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

command -V getopts

IncludeNvim=0
IncludeVim=0
UseCtags=0

while getopts "nvt" Opt; do
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

mkdir -p ~/bin
cp $CurrentPath/scripts/* ~/bin

mkdir -p $CurrentPath/extras
touch $CurrentPath/extras/profile
touch $CurrentPath/extras/vimrc
touch $CurrentPath/extras/zshrc
chmod 0600 $CurrentPath/extras/zshrc
touch $CurrentPath/extras/dmenu_commands
touch $CurrentPath/extras/auto_commands
touch $CurrentPath/extras/frequent_dirs

if [ -d ~/.zsh-syntax ]; then
  git -C ~/.zsh-syntax pull
else
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh-syntax
fi

cat > ~/.zshrc << EOF
source $CurrentPath/shared/zshrc
source $CurrentPath/extras/zshrc
source ~/.zsh-syntax/zsh-syntax-highlighting.zsh
export PERSONAL_CONFIG_DIR=$CurrentPath
EOF

mkdir -p ~/.zsh_functions
cp -v $CurrentPath/shared/zsh_functions/* ~/.zsh_functions

cp -v "$CurrentPath/shared/profile" ~/.profile
cat "$CurrentPath/extras/profile" >> ~/.profile
echo "export PERSONAL_CONFIG_DIR=$CurrentPath" >> ~/.profile

function ensure_ctags {
  command -V ctags
  mkdir -p ~/.ctags.d
}

if [[ $IncludeVim -eq 1 ]]; then
  command -V fzf
  command -V vim

  if [ ! -d ~/.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  fi

  echo "let g:is_vim=1" > ~/.vimrc
  cat $CurrentPath/shared/vim/plugins.vim >> ~/.vimrc
  cat $CurrentPath/shared/vim/vim_only.vim >> ~/.vimrc
  cat $CurrentPath/shared/vim/shared_post.vim >> ~/.vimrc
  cat $CurrentPath/shared/vim/mappings.vim >> ~/.vimrc
  cat $CurrentPath/extras/vimrc >> ~/.vimrc

  if [[ $UseCtags -eq 1 ]]; then
    ensure_ctags
  else
    echo 'let g:gutentags_enabled=0' >> ~/.vimrc
  fi

  vim +PluginUpdate +qa
fi

if [[ $IncludeNvim -eq 1 ]]; then
  command -V fzf
  command -V nvim

  rm -rf ~/.config/nvim
  git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
  echo "let g:is_vim=0" > ~/.config/nvim/init.vim
  cat $CurrentPath/shared/vim/plugins.vim >> ~/.config/nvim/init.vim
  cat $CurrentPath/shared/vim/shared_post.vim >> ~/.config/nvim/init.vim
  cat $CurrentPath/shared/vim/mappings.vim >> ~/.config/nvim/init.vim
  nvim +PluginUpdate +qa

  if [[ $UseCtags -eq 1 ]]; then
    ensure_ctags
  else
    echo 'let g:gutentags_enabled=0' >> ~/.config/nvim/init.vim
  fi
fi

cp -v $CurrentPath/shared/lesskey_workman ~/.lesskey
cp -v $CurrentPath/shared/gitconfig ~/.gitconfig
cp -v $CurrentPath/shared/gitignore ~/.gitignore
cp -v $CurrentPath/shared/screenrc ~/.screenrc

function linux_specific {
  command -V dircolors
  echo 'eval $(dircolors -b '$CurrentPath'/linux/ls_color_db)' >> ~/.zshrc
  echo 'alias ls=" ls --color=auto"' >> ~/.zshrc
}

function mac_specific {
  echo 'alias ls=" ls -G"' >> ~/.zshrc
}

uname | grep -qsi linux && linux_specific
uname | grep -qsi darwin && mac_specific

