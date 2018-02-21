"Faster save
nnoremap <leader>w :w<CR>

"Reload vimrc
nnoremap <C-h> :so $MYVIMRC<CR>

"Buffers navigate
nnoremap <silent> gn :bn<CR>
nnoremap <silent> gp :bp<CR>

"FUZZY FILE
nnoremap <silent> <C-t> :call fzf#run({'sink':'tabe','down':'30%'})<CR>
nnoremap <silent> <C-p> :call fzf#run({'sink': 'e'})<CR>

"Better Movement
autocmd VimEnter * nnoremap j gj
autocmd VimEnter * nnoremap k gk
nnoremap <C-j> 3j
nnoremap <C-k> 3k

"Highlight previous INSERT
nnoremap gV `[v`]

"Better <ESC>
inoremap jk <ESC>

inoremap II <Esc>I
inoremap AA <Esc>A
inoremap OO <Esc>O

"Vim Xclipboard (Must have vim-gtk or something to vim access
"Xclipboard)
vnoremap <silent><leader>y "+y
