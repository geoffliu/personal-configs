
if g:is_vim
  let bundle_dir = '~/.vim/bundle'
else
  let bundle_dir = '~/.config/nvim/bundle'
endif

let &rtp = &rtp . ',' . bundle_dir . '/Vundle.vim'

set nocompatible
filetype off
call vundle#begin(bundle_dir)
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/LargeFile'
Plugin 'altercation/vim-colors-solarized'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'bling/vim-bufferline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'leafgarland/typescript-vim'
Plugin 'dhruvasagar/vim-table-mode'
call vundle#end()
filetype plugin indent on
