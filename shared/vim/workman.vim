
noremap n j
noremap e k
noremap y h
noremap o l

noremap N J

noremap j y
noremap k n
noremap l o
noremap h e

noremap J Y
noremap K N
noremap L O
noremap H E

inoremap <c-e> <esc>:bp<cr>
inoremap <c-n> <esc>:bn<cr>
noremap <c-e> :bp<cr>
noremap <c-n> :bn<cr>
noremap <leader>d :wa<cr>
inoremap <leader>d <c-o>:wa<cr>
nnoremap <leader>r :call fzf#run(fzf#wrap({ 'source': g:fuzzy_user_command }))<cr>
noremap <c-j> :call ToggleNumber()<cr>
inoremap <c-j> <c-o>:call ToggleNumber()<cr>
