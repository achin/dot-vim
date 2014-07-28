syntax on
filetype plugin indent on

set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set autoindent
set nocompatible
set visualbell
set hlsearch
set incsearch
set showmatch
set backspace=indent,eol,start
set ignorecase
set smartcase
set wildmenu
set wildmode=longest:full
set wildignore+=*/tmp/*,*.class,*.swp,*.jar
set spell
set list
set listchars=tab:▸\ ,
set ruler
set formatoptions=qrn1
set colorcolumn=85
set splitright
set laststatus=2
set tags=tags;
set scrolloff=10
set foldlevel=99

autocmd ColorScheme * highlight LineNr ctermfg=6 ctermbg=100
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * hi! link SignColumn LineNr
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
autocmd BufWinEnter * silent! :%foldopen!

autocmd filetype html,xml setlocal tabstop=2
autocmd filetype html,xml setlocal shiftwidth=2

autocmd BufNewFile,BufReadPost *.cljx setfiletype clojure

nnoremap j gj
nnoremap k gk

nnoremap Y y$

inoremap jj <ESC>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

let mapleader = ","
let maplocalleader = ","
nnoremap \ ,

nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>eV :e $MYVIMRC<cr>
nnoremap <leader>s :set spell!<cr>

set path+=src/**,test/**

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'rc'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.svn$',
  \ 'file': '\.class$'
  \ }

let g:clojure_fuzzy_indent_patterns = ['^with', '^def', '^let', '^facts\?', '^against-background', 'GET', 'POST', 'DELETE', 'ANY']

call pathogen#infect()

colorscheme solarized
set background=light

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
