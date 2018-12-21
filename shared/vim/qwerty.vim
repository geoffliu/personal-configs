
inoremap <c-k> <esc>:bp<cr>
inoremap <c-j> <esc>:bn<cr>
noremap <c-k> :bp<cr>
noremap <c-j> :bn<cr>
noremap <leader>w :wa<cr>
inoremap <leader>w <c-o>:wa<cr>
nnoremap <leader>e :call fzf#run(fzf#wrap({ 'source': g:fuzzy_user_command }))<cr>
noremap <c-y> :call ToggleNumber()<cr>
inoremap <c-y> <c-o>:call ToggleNumber()<cr>
