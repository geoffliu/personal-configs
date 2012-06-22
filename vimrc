filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'L9'
Bundle 'FuzzyFinder'

filetype plugin indent on

syn on
set tabstop=2
set shiftwidth=2
set expandtab

set incsearch
set ignorecase
set smartcase
set hls

set number
set nocompatible

set wildmode=longest,list
set formatoptions-=t

colorscheme zellner

" Powerline settings
set laststatus=2
set t_Co=256

imap <C-h> <ESC>:tabp<CR>
imap <C-l> <ESC>:tabn<CR>
map <C-h> :tabp<CR>
map <C-l> :tabn<CR>

" Tag list options
imap <C-z> <ESC>:TlistToggle<CR>
map <C-z> :TlistToggle<CR>
let Tlist_WinWidth=80
let Tlist_Close_On_Select=1
let Tlist_Exit_OnlyWindow=1

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
nmap <Leader>e :FufCoverageFile<CR>

" File type specific settings
au BufEnter *.tex set fo+=a
au BufEnter *.tex set spell
au BufEnter *.c set cindent
au BufEnter *.h set cindent
au BufEnter *.cpp set cindent
au BufEnter *.java set cindent
au BufEnter *.py set cindent
au BufEnter *.mli set cindent
au BufEnter *.ml set cindent
au BufRead,BufNewFile *.scala set filetype=scala
au BufWritePre * :%s/\s\+$//e

