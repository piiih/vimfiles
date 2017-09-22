call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-surround'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'teranex/jk-jumps.vim'
Plug 'pangloss/vim-javascript'
Plug 'mileszs/ack.vim'
call plug#end()

let mapleader = ' '
