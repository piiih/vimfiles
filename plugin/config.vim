set t_Co=256
colorscheme wombat256mod

set nu
set rnu
set cursorline
set visualbell
set t_vb=
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set wildmenu
set incsearch
set hlsearch

" Change cursor shape in insert mode
au InsertEnter * silent execute "!echo -en \<esc>[6 q"
au InsertLeave * silent execute "!echo -en \<esc>[2 q"
