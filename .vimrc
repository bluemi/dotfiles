" Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
execute pathogen#helptags()

" swap/backup files location
if isdirectory($HOME . '/.vim/.tmp') == 0
  :silent !mkdir -m 700 -p ~/.vim/.tmp > /dev/null 2>&1
endif
set backupdir=$HOME/.vim/.tmp//
set directory=$HOME/.vim/.tmp//

" Map jk to <ESC>
inoremap jk <ESC>

" Remap leader key to ","
let mapleader = ","

" Syntax highlighting
syntax on
filetype plugin indent on

" Line numbers
set number
set ruler

" Encoding
set encoding=utf-8

" Show whitespace characters
"set list
"set listchars=tab:>-

" Erlang uses 4 spaces
autocmd BufRead,    BufNewFile *.erl, *.es, *.hrl, *.yaws, *.xrl set  expandtab
au      BufNewFile, BufRead    *.erl, *.es, *.hrl, *.yaws, *.xrl setf erlang

