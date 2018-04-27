" Configure vim
set nocompatible
filetype off
filetype plugin indent on
au FileType gitcommit set tw=72
au FileType hgcommit set tw=72

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
set tabstop=2
set shiftwidth=2

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
