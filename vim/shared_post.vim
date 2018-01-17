set tabstop=2
set shiftwidth=2
set expandtab

set relativenumber
function! ToggleNumber()
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

" Tag list options
" inoremap <c-z> <c-o>:TagbarToggle<cr>
" noremap <c-z> :TagbarToggle<cr>

" Fuzzy finder options
let g:ctrlp_user_command=['.git', 'cd %s && git ls-files']
nnoremap <leader>e :CtrlP<cr>
nnoremap <leader>b :CtrlPBuffer<cr>

let g:default_tab_direction='back'
function! HandleTab(direction)
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

" File type specific settings
augroup filetype_group
  autocmd!
  autocmd BufEnter *.tex set fo+=a
  autocmd BufEnter *.tex set spell
  autocmd BufEnter Makefile set noet
augroup END

function! BufferWritePre()
  let oldsearch = @/
  execute "normal! ml"

  :%s/\s\+$//e

  call histdel("/", -1)
  let @/ = oldsearch
  execute "normal! `l"
endfunction
autocmd BufWritePre * :call BufferWritePre()

