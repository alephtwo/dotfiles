" Use Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'bling/vim-airline'
  Plugin 'tpope/vim-fugitive'
call vundle#end()
filetype plugin indent on

" 256-bit color
let &t_Co=256

" Use Line Numbers and Syntax
set nu
syntax on

set ai " Auto Indent
set si " Smart Indent
set nowrap " Disable Wrapping
set cursorline " Show Horizontal Cursor

" Spaces > Tabs
set expandtab
set smarttab
set tabstop=4
set shiftwidth=4

" Enable the mouse
if has('mouse')
  set mouse=a
endif

" Disable backups
set nobackup
set nowb
set noswapfile

" Show statusline
set laststatus=2
let g:airline_theme='luna'
let g:airline_powerline_fonts=1

" Allow trimming of whitespace
function! Trim()
  %s/\s\+$//e
endfunction
