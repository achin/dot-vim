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

filetype plugin indent on
call pathogen#infect()
command Paredit call PareditToggle()
