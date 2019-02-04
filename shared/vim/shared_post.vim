set tabstop=2
set shiftwidth=2
set expandtab
set hidden

let g:solarized_termcolors=16
let g:solarized_termtrans=1
set background=dark
colorscheme solarized

" Status line settings
set t_Co=256
set laststatus=2
let g:airline_theme='solarized'

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

inoremap ., <esc>
noremap <s-tab> :bp<cr>
noremap <tab> :bn<cr>
noremap <leader>s :noh<cr>

let g:fzf_layout = { 'down': '~40%' }
let g:fuzzy_user_command = 'git exec git ls-files'

let g:gutentags_file_list_command = {
      \   'markers': {
      \     '.git': 'git ls-files'
      \   }
      \ }

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

