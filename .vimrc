" Use Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
  Plugin 'VundleVim/Vundle.vim'
  Plugin 'elixir-lang/vim-elixir'
  Bundle 'powerline/powerline', {'rtp': 'powerline/bindings/vim'}
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
set t_Co=256

" Allow trimming of whitespace
function! Trim()
  %s/\s\+$//e
endfunction
