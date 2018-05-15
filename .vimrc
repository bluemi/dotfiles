set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'mileszs/ack.vim'
Plugin 'jonathanfilip/vim-lucius'
Plugin 'sjbach/lusty'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()
filetype plugin indent on

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

" Color
colorscheme lucius
LuciusDarkLowContrast

" Encoding
set encoding=utf-8

" Tabs
set expandtab ts=4 sw=4 ai
set hidden

" Show whitespace characters
"set list
"set listchars=tab:>-

" Default params for ack
let g:ackprg="ack -H --nocolor --nogroup --column"
" Add a mark and search
nmap <leader>j mA:Ack<space>
" Add a mark and search for the word under the cursor
nmap <leader>ja mA:Ack "<C-r>=expand("<cword>") <cr>"
nmap <leader>jA mA:Ack "<C-r>=expand("<cWORD>") <cr>"

" iTerm2 change cursor based on mode
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
    let &t_SR = "\<esc>]50;CursorShape=2\x7" " Underline in replace mode
endif

" Disabling the directional keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

