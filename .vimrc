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

" Disable backups
set nobackup
set nowb
set noswapfile
set nomodeline " CVE-2019-12735

" Show the status bar
set laststatus=2
set t_Co=256

" Allow trimming of whitespace
function! Trim()
  %s/\s\+$//e
endfunction

" Visual niceties
set colorcolumn=80

" macOS fixes
set backspace=indent,eol,start
