" Pathogen
"runtime bundle/vim-pathogen/autoload/pathogen.vim
"execute pathogen#infect()
"execute pathogen#helptags()

" swap/backup files location
if isdirectory($HOME . '/.vim/.tmp') == 0
  :silent !mkdir -m 700 -p ~/.vim/.tmp > /dev/null 2>&1
endif
set backupdir=$HOME/.vim/.tmp//
set directory=$HOME/.vim/.tmp//

" Display
set title
set number
set ruler
set wrap
set scrolloff=3
set antialias

" Search
set ignorecase
set smartcase
set incsearch
set hlsearch

" Beep
set visualbell
set noerrorbells

" Backspace
set backspace=indent,eol,start

" Map jk to <ESC>
inoremap jk <ESC>

" Remap leader key to ","
let mapleader = ","

" Syntax highlighting
syntax on
filetype plugin indent on

" Color
"colorscheme lucius
"LuciusDarkLowContrast

" Encoding
set encoding=utf-8

" Tabs
set expandtab ts=4 sw=4 ai
set hidden
" Erlang uses 4 spaces
"autocmd BufRead,    BufNewFile *.erl, *.es, *.hrl, *.yaws, *.xrl set  expandtab
"au      BufNewFile, BufRead    *.erl, *.es, *.hrl, *.yaws, *.xrl setf erlang

" Show whitespace characters
"set list
"set listchars=tab:>-

" NERDTree
"nnoremap <leader>n :NERDTreeToggle<CR>

" iTerm2 change cursor based on mode
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
    let &t_SR = "\<esc>]50;CursorShape=2\x7" " Underline in replace mode
endif

