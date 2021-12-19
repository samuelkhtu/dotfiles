:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline' "Status bar
Plug 'https://github.com/vim-airline/vim-airline-themes' "Airline theme
Plug 'https://github.com/preservim/nerdtree' "Nerd tree
Plug 'https://github.com/tpope/vim-commentary' "For commenting gcc & gc
Plug 'neoclide/coc.nvim', {'branch': 'release'} "Auto complete


" Plug 'https://github.com/tc50cal/vim-terminal' "vim terminal

let g:coc_global_extensions = ['coc-json', 'coc-git']

call plug#end()

let g:airline_theme='base16'
let g:airline_powerline_fonts = 1
