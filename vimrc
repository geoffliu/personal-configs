filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'geoffliu/vim-scala'
Bundle 'tpope/vim-surround'
Bundle 'vim-scripts/LargeFile'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'bling/vim-bufferline'
Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'

syn on
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set textwidth=80
set hlsearch
set backspace=start,indent
set hidden

set incsearch
set ignorecase
set smartcase
set nocompatible

set wildmode=longest,list
set wildmenu
set formatoptions-=t
set complete-=i

let g:solarized_termcolors=16
let g:solarized_termtrans=1
set background=dark
colorscheme solarized

" Status line settings
set t_Co=256
set laststatus=2
let g:airline_powerline_fonts=1
let g:airline_theme='solarized'

" Tag list options
" inoremap <c-z> <c-o>:TagbarToggle<cr>
" noremap <c-z> :TagbarToggle<cr>

" Fuzzy finder options
let g:ctrlp_user_command=['.git', 'cd %s && git ls-files']
nnoremap <leader>e :CtrlP<cr>
nnoremap <leader>b :CtrlPBuffer<cr>

