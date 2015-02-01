filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'geoffliu/vim-scala'
Bundle 'tpope/vim-surround'
" Bundle 'majutsushi/tagbar'
Bundle 'vim-scripts/LargeFile'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'bling/vim-airline'

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

set relativenumber
function ToggleNumber()
  if &number
    set relativenumber
    set nonumber
  elseif &relativenumber
    set norelativenumber
  else
    set number
  endif
endfunction
noremap <c-y> :call ToggleNumber()<cr>
inoremap <c-y> <c-o>:call ToggleNumber()<cr>

let g:solarized_termcolors=16
let g:solarized_termtrans=1
set background=dark
colorscheme solarized

" Status line settings
set t_Co=256
set laststatus=2
let g:airline_powerline_fonts=1

inoremap jk <esc>
inoremap <c-h> <esc>:bp<cr>
inoremap <c-l> <esc>:bn<cr>
noremap <c-h> :bp<cr>
noremap <c-l> :bn<cr>
noremap <s-tab> :bp<cr>
noremap <tab> :bn<cr>
noremap <leader>w :wa<cr>
inoremap <leader>w <c-o>:wa<cr>
noremap <leader>s :noh<cr>

let g:default_tab_direction='back'
function HandleTab(direction)
  let currentLine = getline(".")
  let toCursor = strpart(currentLine, 0, col(".") - 1)
  let stripped = substitute(toCursor, "\\s*", "", "g")
  if empty(stripped)
    return "\<tab>"
  else
    if a:direction ==# g:default_tab_direction
      return "\<c-n>"
    else
      return "\<c-p>"
    endif
  endif
endfunction
inoremap <tab> <c-r>=HandleTab("forward")<cr>
inoremap <s-tab> <c-r>=HandleTab("back")<cr>

" Tag list options
" inoremap <c-z> <c-o>:TagbarToggle<cr>
" noremap <c-z> :TagbarToggle<cr>

" Fuzzy finder options
function CoverageFileGlob()
  let g:ctrlp_user_command=''
  CtrlP
endfunction
function CoverageFileGit()
  let g:ctrlp_user_command='git ls-files'
  CtrlP
endfunction
nnoremap <leader>e :call CoverageFileGit()<cr>
nnoremap <leader>a :call CoverageFileGlob()<cr>

" File type specific settings
augroup filetype_group
  autocmd!
  autocmd BufEnter *.tex set fo+=a
  autocmd BufEnter *.tex set spell
augroup END

highlight Pmenu ctermbg=magenta
set cursorline
highlight CursorLine ctermbg=237 cterm=none

autocmd BufWritePre * :%s/\s\+$//e
