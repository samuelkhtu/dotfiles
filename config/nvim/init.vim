:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

" -------------------- VIM Setup ------------------------------
set termguicolors


" -------------- Auto Install Vim-Plug Manager ----------------
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" ----------------------- Plug In -----------------------------
call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline' "Status bar
Plug 'https://github.com/vim-airline/vim-airline-themes' "Airline theme
Plug 'https://github.com/preservim/nerdtree' "Nerd tree
Plug 'https://github.com/tpope/vim-commentary' "For commenting gcc & gc
Plug 'neoclide/coc.nvim', {'branch': 'release'} "Auto complete

" Plug 'https://github.com/ctrlpvim/ctrlp.vim' "Ctrl P Open File

Plug 'Mofiqul/vscode.nvim'

" dev icon has to be last plugin
Plug 'https://github.com/ryanoasis/vim-devicons' "Dev Icon

call plug#end()

" ------------------ Auto-complete Plug-in Config -----------------
let g:coc_global_extensions = ['coc-json', 'coc-git', 'coc-jedi']

" -------------- Airline Status Bar Configuration -----------------
let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers

let g:airline_theme='bubblegum'
let g:airline_powerline_fonts = 1

let g:vscode_style = "dark"
colorscheme vscode

