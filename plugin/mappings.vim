"Faster save
nnoremap <leader>w :w<CR>

"Reload vimrc
nnoremap <C-h> :so $MYVIMRC<CR>

"Buffers navigate
nnoremap <silent> gn :bn<CR>
nnoremap <silent> gp :bp<CR>

"FUZZY FILE
nnoremap <silent> <C-t> :call fzf#run({'source': 'find . -not \( -path "./node_modules/*" -prune \) -not \( -path "./.git/*" -prune \) -type f', 'sink':'tabe','down':'30%'})<CR>
nnoremap <silent> <C-p> :FZF<CR>

"Better Movement
autocmd VimEnter * nnoremap j gj
autocmd VimEnter * nnoremap k gk
nnoremap <C-j> 3j
nnoremap <C-k> 3k

"Highlight previous INSERT
nnoremap gV `[v`]

"Better <ESC>
inoremap jk <ESC>

" Faster Autocomplete
inoremap jj <C-n>

inoremap AA <Esc>A

"Vim Xclipboard (Must have vim-gtk or something to vim access
"Xclipboard)
vnoremap <silent><leader>y "+y
