syntax on
set hidden
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
set cursorline
set relativenumber
set ignorecase
set smartcase
set wildmenu
set wildmode=longest:full
set list
set listchars=tab:▸\ ,eol:¬
highlight NonText ctermfg=7 guifg=gray
highlight SpecialKey ctermfg=7 guifg=gray

nnoremap j gj
nnoremap k gk

if has('autocmd')
    autocmd filetype html set tabstop=2
    autocmd filetype html set shiftwidth=2
endif

filetype plugin indent on
call pathogen#infect()
command Paredit call PareditToggle()
