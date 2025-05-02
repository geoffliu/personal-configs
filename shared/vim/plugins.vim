
if g:is_vim
  let bundle_dir = '~/.vim/bundle'
else
  let bundle_dir = '~/.config/nvim/bundle'
endif

let &rtp = &rtp . ',' . bundle_dir . '/Vundle.vim'

set nocompatible
filetype off
call vundle#begin(bundle_dir)
" Base
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-scripts/LargeFile'
Plugin 'airblade/vim-rooter'
Plugin 'tpope/vim-surround'

" Look and feel
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-bufferline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Dev utils
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'junegunn/fzf'
Plugin 'ludovicchabant/vim-gutentags'

" Languages
Plugin 'leafgarland/typescript-vim'
Plugin 'udalov/kotlin-vim'
Plugin 'digitaltoad/vim-pug'
call vundle#end()
filetype plugin indent on

