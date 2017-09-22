"Faster save
nnoremap <leader>w :w<CR>

nnoremap <C-h> :so $MYVIMRC<CR>

"Buffers navigate
nnoremap <silent> gn :bn<CR>
nnoremap <silent> gp :bp<CR>

"FUZZY FILE
nnoremap <C-t> :call fzf#run({'sink':'tabe','down':'30%'})<CR>
nnoremap <C-p> :call fzf#run({'sink': 'e'})<CR>

"Better Movement
nnoremap j gj
nnoremap k gk

"Highlight previous INSERT
nnoremap gV `[v`]

"Better <ESC>
inoremap jk <ESC>
