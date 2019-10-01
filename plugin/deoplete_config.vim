let g:deoplete#enable_at_startup = 1
autocmd VimEnter * call deoplete#custom#option('sources', {
      \ 'rust': ['racer'],
      \})
