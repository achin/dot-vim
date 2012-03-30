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
set spell
set list
set listchars=tab:▸\ ,
set ruler
set formatoptions=qrn1
set colorcolumn=85

autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

nnoremap j gj
nnoremap k gk

let mapleader = ","

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>s :set spell!<cr>

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

function! <SID>StripTrailingWhitespace()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction

nnoremap <silent> <leader><space> :call <SID>StripTrailingWhitespace()<CR>
