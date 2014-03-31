filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'geoffliu/vim-scala'
Bundle 'tpope/vim-surround'
Bundle 'majutsushi/tagbar'
Bundle 'vim-scripts/LargeFile'

syn on
set tabstop=2
set shiftwidth=2
set expandtab
set cindent
set textwidth=100
set hlsearch
set backspace=start,indent

set incsearch
set ignorecase
set smartcase
set nocompatible

set wildmode=longest,list
set wildmenu
set formatoptions-=t

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
inoremap <c-y> <esc>:call ToggleNumber()<cr>a

colorscheme zellner

" Powerline settings
set laststatus=2
set t_Co=256

inoremap jk <esc>
inoremap <c-h> <esc>:tabp<cr>a
inoremap <c-l> <esc>:tabn<cr>a
noremap <c-h> :tabp<cr>
noremap <c-l> :tabn<cr>
noremap <s-tab> :tabp<cr>
noremap <tab> :tabn<cr>

function HandleTab(direction)
  let currentLine = getline(".")
  let stripped = substitute(currentLine, "\\s*", "", "g")
  if empty(stripped)
    return "\<tab>"
  else
    if a:direction ==# "forward"
      return "\<c-n>"
    else
      return "\<c-p>"
    endif
  endif
endfunction
inoremap <tab> <c-r>=HandleTab("forward")<cr>
inoremap <s-tab> <c-r>=HandleTab("back")<cr>

" Tag list options
inoremap <c-z> <esc>:TagbarToggle<cr>i
noremap <c-z> :TagbarToggle<cr>

" FuzzyFinder options
let g:fuf_keyOpenTabpage='<cr>'
nnoremap <leader>e :FufCoverageFile<cr>

" File type specific settings
augroup filetype_group
  autocmd!
  autocmd BufEnter *.tex set fo+=a
  autocmd BufEnter *.tex set spell
augroup END

highlight Pmenu ctermbg=magenta
highlight OverLength ctermbg=darkred ctermfg=white
match OverLength /\%121v.*/
set cursorline
highlight CursorLine ctermbg=237 cterm=none

autocmd BufWritePre * :%s/\s\+$//e
