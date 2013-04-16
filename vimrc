filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'derekwyatt/vim-scala'
Bundle 'tpope/vim-surround'
Bundle 'UltiSnips'
Bundle 'majutsushi/tagbar'

filetype plugin indent on

syn on
set tabstop=2
set shiftwidth=2
set expandtab
set cindent
set textwidth=100

set incsearch
set ignorecase
set smartcase
set hls

set number
set relativenumber
set nocompatible

set wildmode=longest,list
set wildmenu
set formatoptions-=t

colorscheme zellner

" Powerline settings
set laststatus=2
set t_Co=256

inoremap <C-h> <ESC>:tabp<CR>
inoremap <C-l> <ESC>:tabn<CR>
noremap <C-h> :tabp<CR>
noremap <C-l> :tabn<CR>

" Tag list options
inoremap <C-z> <ESC>:TagbarToggle<CR>i
noremap <C-z> :TagbarToggle<CR>

" In visual mode, search the selected string with * or #
function! VisualSearch(direction) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'b'
        execute "normal ?" . l:pattern . "^M"
    elseif a:direction == 'f'
        execute "normal /" . l:pattern . "^M"
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>

" FuzzyFinder options
let g:fuf_keyOpenTabpage='<CR>'
nnoremap <Leader>e :FufCoverageFile<CR>

" File type specific settings
au BufEnter *.tex set fo+=a
au BufEnter *.tex set spell

highlight Pmenu ctermbg=magenta
highlight OverLength ctermbg=darkred ctermfg=white
match OverLength /\%121v.*/
set cursorline
highlight CursorLine ctermbg=237 cterm=none

