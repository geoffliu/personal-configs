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
noremap <c-y> :call ToggleNumber()<cr>
inoremap <c-y> <c-o>:call ToggleNumber()<cr>

inoremap jk <esc>
inoremap <c-k> <esc>:bp<cr>
inoremap <c-j> <esc>:bn<cr>
noremap <c-k> :bp<cr>
noremap <c-j> :bn<cr>
noremap <s-tab> :bp<cr>
noremap <tab> :bn<cr>
noremap <leader>w :wa<cr>
inoremap <leader>w <c-o>:wa<cr>
noremap <leader>s :noh<cr>

inoremap ., <esc>
inoremap <c-e> <esc>:bp<cr>
inoremap <c-n> <esc>:bn<cr>
noremap <c-e> :bp<cr>
noremap <c-n> :bn<cr>
noremap <leader>d :wa<cr>
inoremap <leader>d <c-o>:wa<cr>

let g:fzf_layout = { 'down': '~40%' }
let g:fuzzy_user_command = 'git exec git ls-files'
nnoremap <leader>e :call fzf#run(fzf#wrap({ 'source': g:fuzzy_user_command }))<cr>
nnoremap <leader>r :call fzf#run(fzf#wrap({ 'source': g:fuzzy_user_command }))<cr>

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

