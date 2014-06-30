" Pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
execute pathogen#helptags()

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
au FileType erlang set softtabstop=4 tabstop=4 shiftwidth=4

