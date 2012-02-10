syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set nocompatible
set visualbell
set nohlsearch
set showmatch
set backspace=indent,eol,start
set ignorecase
set smartcase
set wildmenu
set wildmode=longest:full
set list
set listchars=tab:▸\ ,eol:¬

nnoremap j gj
nnoremap k gk

let mapleader = ","

if has('autocmd')
    autocmd filetype html,xml setlocal tabstop=2
    autocmd filetype html,xml setlocal shiftwidth=2
endif

if version >= 703
    set relativenumber
endif

let g:LustyJugglerSuppressRubyWarning = 1
let g:LustyJugglerShowKeys = 1

filetype plugin indent on
call pathogen#infect()

colorscheme solarized
if has('gui_running')
    set background=light
else
    set background=dark
endif

command Paredit call PareditToggle()
