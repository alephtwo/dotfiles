" Use Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on

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

" Show the status bar
set laststatus=2
set statusline=\ %F%m%r%h\ %w\ \ pwd:\ %r%{getcwd()}%h\ \ \ Line:\ %l

" Allow trimming of whitespace
function! Trim()
  %s/\s\+$//e
endfunction
